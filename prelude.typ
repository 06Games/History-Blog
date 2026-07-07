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
