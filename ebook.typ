#import "@preview/shiroa:0.2.3": *

#import "/templates/ebook.typ"

#show: ebook.project.with(title: "Historique des villages du Moyen Pays Niçois", spec: "book.typ")

// set a resolver for inclusion
#ebook.resolve-inclusion(it => include it)
