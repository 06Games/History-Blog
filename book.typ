
#import "@preview/shiroa:0.2.3": *

#show: book

#book-meta(
  title: "Historique des villages du Moyen Pays Niçois",
  description: "Essai historique sur différents villages de l'arrière-pays niçois",
  repository: "https://github.com/06Games/History-Blog",
  authors: ("Evan Galli",),
  language: "fr",
  summary: [
    #prefix-chapter("pages/avant-propos/avant-propos.typ")[Avant-Propos]
    == La Vésubie
    - #chapter("pages/vesubie/introduction/introduction.typ")[Introduction]
    - #chapter("pages/vesubie/lantosque/lantosque.typ")[Lantosque]
      - #chapter("pages/vesubie/lantosque/notables.typ")[Les notables]
      - #chapter(none)[Les hameaux]
        - #chapter("pages/vesubie/lantosque/saint-colomban/saint-colomban.typ")[Saint-Colomban]
        - #chapter(none)[Loda]
    - #chapter(none)[Utelle]
      - #chapter(none)[Figaret]
    == Le Paillon
    - #chapter(none)[Lucéram]
      - #chapter(none)[Béasse]
  ]
)



// re-export page template
#import "/templates/page.typ": project
#let book-page = project
