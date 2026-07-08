document.addEventListener("DOMContentLoaded", () => {
  // Inject viewport-fit=cover to viewport meta tag for full-bleed mobile display
  const viewportMeta = document.querySelector('meta[name="viewport"]');
  if (viewportMeta) {
    const currentContent = viewportMeta.getAttribute("content");
    if (!currentContent.includes("viewport-fit=cover")) {
      viewportMeta.setAttribute("content", currentContent + ", viewport-fit=cover");
    }
  }

  // Find all figure images wrapped in target="_blank" links (Rheo's default output format)
  // or any link pointing to an image
  const links = Array.from(document.querySelectorAll("figure a[target='_blank'], a[href$='.jpg'], a[href$='.jpeg'], a[href$='.png'], a[href$='.svg'], a[href$='.webp']"))
    .filter(a => {
      const img = a.querySelector("img");
      return img || a.href.match(/\.(jpg|jpeg|png|gif|svg|webp)$/i);
    });

  if (links.length === 0) return;

  // Create elements for the image viewer (lightbox)
  const modal = document.createElement("div");
  modal.className = "lightbox-backdrop";

  const wrapper = document.createElement("div");
  wrapper.className = "lightbox-wrapper";

  const img = document.createElement("img");
  img.className = "lightbox-img";
  img.alt = "Viewer image";

  const caption = document.createElement("div");
  caption.className = "lightbox-caption";

  const closeBtn = document.createElement("button");
  closeBtn.className = "lightbox-close";
  closeBtn.ariaLabel = "Close image viewer";
  closeBtn.innerHTML = `
    <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M18 6L6 18M6 6L18 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
  `;

  const prevBtn = document.createElement("button");
  prevBtn.className = "lightbox-arrow lightbox-arrow-left";
  prevBtn.ariaLabel = "Previous image";
  prevBtn.innerHTML = `
    <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M15 19L8 12L15 5" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
  `;

  const nextBtn = document.createElement("button");
  nextBtn.className = "lightbox-arrow lightbox-arrow-right";
  nextBtn.ariaLabel = "Next image";
  nextBtn.innerHTML = `
    <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M9 5L16 12L9 19" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
  `;

  wrapper.appendChild(img);
  wrapper.appendChild(caption);

  // Stop touch propagation on the caption to allow scrolling long text without zooming/panning/swiping the image
  caption.addEventListener("touchstart", (e) => e.stopPropagation(), { passive: true });
  caption.addEventListener("touchmove", (e) => e.stopPropagation(), { passive: true });
  caption.addEventListener("touchend", (e) => e.stopPropagation(), { passive: true });

  modal.appendChild(wrapper);
  modal.appendChild(closeBtn);
  modal.appendChild(prevBtn);
  modal.appendChild(nextBtn);
  document.body.appendChild(modal);

  let currentIndex = -1;

  // Zoom & Pan State
  let scale = 1;
  let translateX = 0;
  let translateY = 0;

  // Mouse drag state
  let isDragging = false;
  let startX = 0;
  let startY = 0;

  // Touch gestures state
  let touchStartDist = 0;
  let initialScale = 1;
  let isPanning = false;
  let isPinching = false;
  let touchStartX = 0;
  let touchEndX = 0;
  let lastTapTime = 0;

  // Elastic drag settings
  const tolerance = 80; // Allow dragging past strict boundaries by 80px

  function getBoundaries() {
    const vw = window.innerWidth;
    const vh = window.innerHeight;

    // Use offset size, fallback to natural size or default to ensure we never divide or multiply by 0
    const width = img.offsetWidth || img.naturalWidth || 800;
    const height = img.offsetHeight || img.naturalHeight || 600;

    const zoomedWidth = width * scale;
    const zoomedHeight = height * scale;

    let maxTx = 0;
    if (zoomedWidth > vw) {
      maxTx = (zoomedWidth - vw) / 2;
    }

    let maxTy = 0;
    if (zoomedHeight > vh) {
      maxTy = (zoomedHeight - vh) / 2;
    }

    return { maxTx, maxTy };
  }

  function clampTranslation(useTolerance = false) {
    if (scale <= 1) {
      translateX = 0;
      translateY = 0;
      return;
    }

    const { maxTx, maxTy } = getBoundaries();
    const currentTolerance = useTolerance ? tolerance : 0;

    const limitX = maxTx + currentTolerance;
    translateX = Math.min(Math.max(translateX, -limitX), limitX);

    const limitY = maxTy + currentTolerance;
    translateY = Math.min(Math.max(translateY, -limitY), limitY);
  }

  function updateImageTransform(enableTransition = false) {
    if (enableTransition) {
      img.style.transition = "transform 0.25s cubic-bezier(0.25, 1, 0.5, 1)";
    } else {
      img.style.transition = "none";
    }
    img.style.transform = `translate(${translateX}px, ${translateY}px) scale(${scale})`;
    img.style.cursor = scale > 1 ? "grab" : "";
  }

  function showImage(index) {
    if (index < 0 || index >= links.length) return;
    currentIndex = index;

    const link = links[currentIndex];

    // Reset zoom & pan values before changing source
    scale = 0.95;
    translateX = 0;
    translateY = 0;
    updateImageTransform(false);

    img.src = link.href;

    // Retrieve caption from adjacent figcaption
    const figure = link.closest("figure");
    if (figure) {
      const figcaption = figure.querySelector("figcaption");
      if (figcaption) {
        caption.innerHTML = figcaption.innerHTML;
      } else {
        caption.textContent = "";
      }
    } else {
      const imgElem = link.querySelector("img");
      caption.textContent = imgElem ? imgElem.alt || "" : "";
    }

    // Toggle arrow navigation buttons
    if (links.length > 1) {
      prevBtn.style.display = "flex";
      nextBtn.style.display = "flex";
    } else {
      prevBtn.style.display = "none";
      nextBtn.style.display = "none";
    }

    modal.classList.add("active");
    document.body.style.overflow = "hidden"; // Prevent background page scroll

    // Animate scale to 1 on next frame
    requestAnimationFrame(() => {
      scale = 1;
      updateImageTransform(true);
    });
  }

  function closeModal() {
    modal.classList.remove("active");
    document.body.style.overflow = "";
    scale = 1;
    translateX = 0;
    translateY = 0;
    updateImageTransform(false);
  }

  // Intercept click on matching links
  links.forEach((link, index) => {
    link.addEventListener("click", (e) => {
      e.preventDefault();
      showImage(index);
    });
  });

  // Event listener to close modal on backdrop / close button click
  modal.addEventListener("click", (e) => {
    if (e.target === modal || e.target === wrapper || e.target.closest(".lightbox-close")) {
      closeModal();
    }
  });

  // Previous and Next button click handlers
  prevBtn.addEventListener("click", (e) => {
    e.stopPropagation();
    let prevIdx = currentIndex - 1;
    if (prevIdx < 0) prevIdx = links.length - 1;
    showImage(prevIdx);
  });

  nextBtn.addEventListener("click", (e) => {
    e.stopPropagation();
    let nextIdx = currentIndex + 1;
    if (nextIdx >= links.length) nextIdx = 0;
    showImage(nextIdx);
  });

  // Wheel Zoom (Desktop) with proportional translation shrinking
  modal.addEventListener("wheel", (e) => {
    if (!modal.classList.contains("active")) return;
    // Allow scrolling the caption text naturally without zooming
    if (e.target.closest(".lightbox-caption")) return;
    e.preventDefault();

    const zoomSpeed = 0.15;
    const oldScale = scale;
    if (e.deltaY < 0) {
      scale = Math.min(scale + zoomSpeed, 5); // Max zoom 5x
    } else {
      scale = Math.max(scale - zoomSpeed, 1); // Min zoom 1x
    }

    if (scale === 1) {
      translateX = 0;
      translateY = 0;
    } else if (oldScale > 1) {
      // Proportionally scale translation down as we shrink zoom to prevent off-center drift
      const ratio = (scale - 1) / (oldScale - 1);
      translateX *= ratio;
      translateY *= ratio;
    }
    clampTranslation(false);
    updateImageTransform(false);
  }, { passive: false });

  // Mouse Panning
  img.addEventListener("mousedown", (e) => {
    if (scale === 1) return;
    e.preventDefault();
    isDragging = true;
    startX = e.clientX - translateX;
    startY = e.clientY - translateY;
    img.style.cursor = "grabbing";
  });

  window.addEventListener("mousemove", (e) => {
    if (!isDragging) return;
    translateX = e.clientX - startX;
    translateY = e.clientY - startY;
    clampTranslation(true); // Allow elastic dragging outside strict boundaries
    updateImageTransform(false);
  });

  window.addEventListener("mouseup", () => {
    if (isDragging) {
      isDragging = false;
      img.style.cursor = scale > 1 ? "grab" : "";
      clampTranslation(false); // Snap back to strict bounds
      updateImageTransform(true); // Animate the snap-back
    }
  });

  // Double Click to zoom (toggle 1x <-> 2.5x centered on click)
  img.addEventListener("dblclick", (e) => {
    e.preventDefault();
    if (scale > 1) {
      scale = 1;
      translateX = 0;
      translateY = 0;
      updateImageTransform(true);
    } else {
      scale = 2.5;
      const vw = window.innerWidth;
      const vh = window.innerHeight;
      const mouseX = e.clientX - (vw / 2);
      const mouseY = e.clientY - (vh / 2);
      translateX = -mouseX * 1.5;
      translateY = -mouseY * 1.5;
      clampTranslation(false);
      updateImageTransform(true);
    }
  });

  // Bind touch gestures directly to modal container so touches can be tracked anywhere on screen
  // (Prevents problems when a finger moves off the image element during zoom/pan)
  function getDistance(touches) {
    const dx = touches[0].clientX - touches[1].clientX;
    const dy = touches[0].clientY - touches[1].clientY;
    return Math.sqrt(dx * dx + dy * dy);
  }

  modal.addEventListener("touchstart", (e) => {
    if (e.touches.length === 2) {
      isPinching = true;
      touchStartDist = getDistance(e.touches);
      initialScale = scale;
      isPanning = false;
      e.preventDefault();
    } else if (e.touches.length === 1) {
      // Check for double tap
      const currentTime = new Date().getTime();
      const tapDelay = 300;
      if (currentTime - lastTapTime < tapDelay) {
        e.preventDefault();
        if (scale > 1) {
          scale = 1;
          translateX = 0;
          translateY = 0;
          updateImageTransform(true);
        } else {
          scale = 2.5;
          const touchX = e.touches[0].clientX - (window.innerWidth / 2);
          const touchY = e.touches[0].clientY - (window.innerHeight / 2);
          translateX = -touchX * 1.5;
          translateY = -touchY * 1.5;
          clampTranslation(false);
          updateImageTransform(true);
        }
        lastTapTime = 0; // Reset
        return;
      }
      lastTapTime = currentTime;

      if (scale > 1) {
        // Pan start
        isPanning = true;
        startX = e.touches[0].clientX - translateX;
        startY = e.touches[0].clientY - translateY;
        e.preventDefault();
      } else {
        // Prepare swipe navigation
        touchStartX = e.touches[0].screenX;
      }
    }
  }, { passive: false });

  modal.addEventListener("touchmove", (e) => {
    if (e.touches.length === 2) {
      e.preventDefault(); // Stop default browser scroll and zoom
      const dist = getDistance(e.touches);
      if (touchStartDist > 0) {
        const factor = dist / touchStartDist;
        scale = Math.min(Math.max(initialScale * factor, 1), 5);
        if (scale === 1) {
          translateX = 0;
          translateY = 0;
        }
        clampTranslation(true);
        updateImageTransform(false);
      }
    } else if (e.touches.length === 1) {
      if (isPanning && scale > 1) {
        e.preventDefault(); // Stop page scroll
        translateX = e.touches[0].clientX - startX;
        translateY = e.touches[0].clientY - startY;
        clampTranslation(true); // Allow elastic dragging outside strict boundaries
        updateImageTransform(false);
      }
    }
  }, { passive: false });

  modal.addEventListener("touchend", (e) => {
    if (e.touches.length < 2) {
      touchStartDist = 0;
    }
    if (e.touches.length === 0) {
      isPanning = false;
      clampTranslation(false); // Snap back to strict bounds
      updateImageTransform(true); // Animate snap back
      setTimeout(() => {
        isPinching = false;
      }, 100);
    }

    // Swipe Gestures on Modal Backdrop (only active at 1x zoom and not pinching)
    if (scale > 1 || isPinching) return;
    if (e.changedTouches.length === 1) {
      touchEndX = e.changedTouches[0].screenX;
      const swipeThreshold = 60;
      if (touchEndX < touchStartX - swipeThreshold) {
        nextBtn.click();
      } else if (touchEndX > touchStartX + swipeThreshold) {
        prevBtn.click();
      }
    }
  }, { passive: true });

  // Keyboard navigation
  document.addEventListener("keydown", (e) => {
    if (!modal.classList.contains("active")) return;
    if (e.key === "Escape") {
      closeModal();
    } else if (e.key === "ArrowLeft" && scale === 1 && links.length > 1) {
      prevBtn.click();
    } else if (e.key === "ArrowRight" && scale === 1 && links.length > 1) {
      nextBtn.click();
    }
  });
});
