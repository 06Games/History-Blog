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
  (id: "Avant-propos", title: "Avant-propos", url: "./avant-propos.html"),
  (id: "La Vésubie", title: "La Vésubie", url: "./vesubie.html"),
  (
    title: "Lantosque",
    items: (
      (id: "Lantosque", title: "Histoire générale", url: "./lantosque.html"),
      (id: "Lantosque: Les notables", title: "Les notables", url: "./lantosque_notables.html"),
      (
        id: "Saint-Colomban (Lantosque)",
        title: "Saint-Colomban",
        url: "./lantosque_saint-colomban.html",
      ),
    ),
  ),
  (
    title: "Lucéram",
    items: (
      (id: "Lucéram", title: "Histoire générale", url: "./luceram.html"),
      (id: "Peïra-Cava (Lucéram)", title: "Peïra-Cava", url: "./luceram_peira-cava.html"),
    ),
  ),
)

#let base-sidebar = sidebar.with(
  nav: site-nav,
  title: "Historique des villages du Moyen Pays Niçois",
  home-url: "/",
)

#let show-rules(doc) = {
  show image: it => context {
    if target() == "html" {
      let img-src = str(it.source).trim("/")
      let img-alt = if it.alt != none { str(it.alt) } else { "" }

      let to-css-dim(dim) = {
        if dim == none or dim == auto { none } else {
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

      let attrs = (src: img-src, alt: img-alt)

      let styles = ()
      if css-width != none and css-height != none {
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
    if target() == "html" { it.body } else { it }
  }

  doc
}

#let sidebar-site(current: none, doc) = {
  show: show-rules
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
