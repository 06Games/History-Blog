document.addEventListener("DOMContentLoaded", () => {
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
  modal.appendChild(wrapper);
  modal.appendChild(closeBtn);
  modal.appendChild(prevBtn);
  modal.appendChild(nextBtn);
  document.body.appendChild(modal);

  let currentIndex = -1;

  function showImage(index) {
    if (index < 0 || index >= links.length) return;
    currentIndex = index;

    const link = links[currentIndex];
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
  }

  function closeModal() {
    modal.classList.remove("active");
    document.body.style.overflow = "";
  }

  // Intercept click on matching links
  links.forEach((link, index) => {
    link.addEventListener("click", (e) => {
      e.preventDefault();
      showImage(index);
    });
  });

  // Event listener to close modal
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

  // Touch/Swipe Gestures for mobile
  let touchStartX = 0;
  let touchEndX = 0;

  modal.addEventListener("touchstart", (e) => {
    touchStartX = e.changedTouches[0].screenX;
  }, { passive: true });

  modal.addEventListener("touchend", (e) => {
    touchEndX = e.changedTouches[0].screenX;
    const swipeThreshold = 50;
    if (touchEndX < touchStartX - swipeThreshold) {
      nextBtn.click(); // Swiped left -> Next
    } else if (touchEndX > touchStartX + swipeThreshold) {
      prevBtn.click(); // Swiped right -> Previous
    }
  }, { passive: true });

  // Keyboard navigation
  document.addEventListener("keydown", (e) => {
    if (!modal.classList.contains("active")) return;
    if (e.key === "Escape") {
      closeModal();
    } else if (e.key === "ArrowLeft" && links.length > 1) {
      prevBtn.click();
    } else if (e.key === "ArrowRight" && links.length > 1) {
      nextBtn.click();
    }
  });
});
