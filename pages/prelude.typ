#import "@rheo/sidebar:0.1.0": sidebar

#let side-by-side(gutter: 10pt, ..elements) = context {
  show image: set image(width: 100%)
  let elems = elements.pos()
  let count = elems.len()

  if target() == "html" {
    html.elem("div", attrs: (style: "display: flex; gap: " + repr(gutter) + "; justify-content: space-between;"))[
      #for el in elems {
        html.elem("div", attrs: (style: "flex: 1; min-width: 0;"))[#el]
      }
    ]
  } else {
    grid(
      columns: (1fr,) * count,
      gutter: gutter,
      ..elems
    )
  }
}


#let rheo-version = "0.4.0"
#let code-with-version(lang: none, body) = raw(
  lang: lang,
  block: true,
  body.text.replace("{version}", rheo-version),
)

#let site-nav = (
  (id: "Avant-propos", title: "Avant-propos", url: "./avant-propos:avant-propos.html"),
  (id: "Introduction", title: "La Vésubie", url: "./vesubie:introduction:introduction.html"),
  (
    title: "Lantosque",
    items: (
      (id: "Lantosque", title: "Histoire générale", url: "./vesubie:lantosque:lantosque.html"),
      (id: "Lantosque: Les notables", title: "Les notables", url: "./vesubie:lantosque:notables.html"),
      (
        id: "Saint-Colomban (Lantosque)",
        title: "Saint-Colomban",
        url: "./vesubie:lantosque:saint-colomban:saint-colomban.html",
      ),
    ),
  ),
  (
    title: "Lucéram",
    items: (
      (id: "Lucéram", title: "Histoire générale", url: "./paillon:luceram:luceram.html"),
      (id: "Peïra-Cava (Lucéram)", title: "Peïra-Cava", url: "./paillon:luceram:peira-cava:peira-cava.html"),
    ),
  ),
)

#let base-sidebar = sidebar.with(
  nav: site-nav,
  title: "Historique des villages du Moyen Pays Niçois",
  home-url: "/",
  //logo: image("/favicon.svg", alt: "Icon"),
)

#let show-rules(doc) = {
  show image: it => context {
    if target() == "html" {
      let img-src = str(it.source).trim("/")
      let img-alt = if it.alt != none { str(it.alt) } else { "" }
      // Helper function to turn Typst dimensions into CSS safely
      let to-css-dim(dim) = {
        if dim == none or dim == auto { none } else {
          // Typst wraps lengths in relative types sometimes, which breaks CSS calc() if the parent has no fixed height
          if type(dim) == relative {
            if dim.ratio == 0% { return repr(dim.length) }
            if dim.length == 0pt { return repr(dim.ratio) }
          }

          let css-str = repr(dim)
          if css-str.starts-with("0% + ") {
            css-str = css-str.slice(5)
          }

          if "+" in css-str or "-" in css-str {
            "calc(" + css-str + ")"
          } else {
            css-str
          }
        }
      }

      let css-width = to-css-dim(it.width)
      let css-height = to-css-dim(it.height)

      // Build our HTML attribute dictionary dynamically
      let attrs = (src: img-src, alt: img-alt)

      // --- UPGRADED STYLE GENERATION ---
      let styles = ()
      if css-width != none and css-height != none {
        // When both width and height are provided, use CSS max-dimensions
        // so the image scales responsively without stretching or leaving empty whitespace boxes.
        if it.fit == "contain" or it.fit == none {
          styles.push("max-width: " + css-width)
          styles.push("max-height: " + css-height)
          styles.push("width: auto")
          styles.push("height: auto")
          styles.push("object-fit: contain")
        } else {
          styles.push("width: " + css-width)
          styles.push("height: " + css-height)
          if it.fit != none { styles.push("object-fit: " + repr(it.fit).trim("\"")) }
        }
      } else {
        if css-width != none {
          styles.push("width: " + css-width)
          styles.push("height: auto")
        }
        if css-height != none {
          styles.push("height: " + css-height)
          styles.push("width: auto")
        }
      }

      if styles.len() > 0 {
        attrs.insert("style", styles.join("; "))
      }

      html.a(href: img-src, target: "_blank", html.elem("img", attrs: attrs))
    } else {
      it
    }
  }

  show align: it => context {
    // Check the compilation target so PDF/print layouts remain untouched
    if target() == "html" {
      // Extract the horizontal component (handles both 1D like `center` and 2D like `center + horizon`)
      let horiz = if it.alignment.x != none { it.alignment.x } else { it.alignment }

      // Map Typst alignment values to CSS keywords
      let css-align = if horiz == center {
        "center"
      } else if horiz == right or horiz == end {
        "right"
      } else {
        "left"
      }

      let flex-align = if css-align == "center" {
        "center"
      } else if css-align == "right" {
        "flex-end"
      } else {
        "flex-start"
      }

      // Emit a <div> with CSS handling both text and block-level alignment
      html.elem(
        "div",
        attrs: (
          style: "text-align: "
            + css-align
            + "; display: flex; flex-direction: column; align-items: "
            + flex-align
            + ";",
        ),
        it.body,
      )
    } else {
      // Retain standard Typst layout for PDF/print compilation
      it
    }
  }

  doc
}

#let sidebar-site(current: none, doc) = {
  show: show-rules
  // Pass the modified document into the original sidebar plugin
  base-sidebar(current: current, doc)
}


#let fit-image(path, max-height: 7.5cm, ..args) = context {
  if target() == "html" {
    // Return a standard image. The show rule below will handle HTML rendering!
    image(path, width: 100%, height: max-height, fit: "contain", ..args)
  } else {
    let img = image(path, ..args)
    let (width: w, height: h) = measure(img)

    layout(size => {
      let target-height = size.width * (h / calc.max(w, 1pt))

      if target-height > max-height {
        image(path, width: auto, height: max-height, ..args)
      } else {
        image(path, width: 100%, height: auto, ..args)
      }
    })
  }
}

// RHEO_HACK: if_epub_start
// RHEO_HACK: if_epub_end
