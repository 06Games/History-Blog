#import "/book.typ": book-page

#show: book-page.with(title: "Saint-Colomban (Lantosque)")
#set text(lang: "fr")

= Saint-Colomban

Saint-Colomban est un hameau de Lantosque, situé à 725 mètres d'altitude.

Les premiers peuplements de Saint-Colomban remonterait au VIIe siècle selon la mairie de Lantosque #footnote(link("https://www.lantosque.fr/commune/histoire-et-patrimoine/")[Lantosque : Histoire et patrimoine]), mais je n'ai pu trouver de source pour le confirmer.

Le hameau est mentionné dans le cartulaire de la cathédrale de Nice au XIIe siècle#footnote(link("https://gallica.bnf.fr/ark:/12148/bpt6k59258/f447.item")[Pouillés des provinces d'Aix, d'Arles et d'Embrun, publiés, sous la direction de M. Maurice Prou membre de l'Académie, par M. Étienne Clouzot archiviste paléographe auxiliaire de l'Académie, p278]).

Les habitations sont décrites comme en ruine dans le registre d'"État des droits et revenus du comte Charles 1#super[er] en Provence" datant de 1252 #footnote[#link("https://odyssee.univ-amu.fr/files/original/1/532/FR_MMSH_MDQ_PRJ_MG_004.pdf")[Enquêtes sur les droits et revenus de Charles Ier d'Anjou en Provence (1252 et 1278) par Edouard Baratier] : #text(lang: "la", style: "italic")["San Columbar est castrum dirrutum, cujus territorium tenent homines de Lantoscha."] --- Saint-Colomban est un site fortifié en ruines, dont le territoire est tenu par les hommes de Lantosque.].

== Les écarts

Saint-Colomban dispose de plusieurs écarts, dont les principaux sont Gorblaou et Camari. Il existe également des écarts dorénavant abandonnés, comme la Couala de Guillerm _(La Colle)_ et Béasse sur la commune de Lucéram.

#[
  #let legend(color: white.transparentize(20%), size: 10pt, content) = circle(
    stroke: color.transparentize(50%),
    inset: 1pt,
    align(
      center,
      text(
        fill: color,
        size: size,
        weight: "bold",
        content,
      ),
    ),
  )

  #align(center + horizon, box(width: 75%, figure(
    box[
      #pad(5.75%, rotate(-98deg, image(
        ".assets/IGNF_PVA_1-0__1945-07-14__C3840-0131_1945_MISSIONALPES16_5133.jpg",
        width: 100%,
      )))

      #place(top + left, legend("1"), dx: 30%, dy: 41%)
      #place(top + left, legend("2"), dx: 41%, dy: 50%)
      #place(top + left, legend("3"), dx: 56%, dy: 40%)
      #place(top + left, legend("4"), dx: 55%, dy: 69%)
      #place(top + left, legend("5", size: 8pt, color: aqua), dx: 44%, dy: 19%)
      #place(top + left, legend("6", size: 8pt, color: aqua), dx: 78%, dy: 34%)
    ],
    caption: [
      Saint-Colomban et ses environs vu du ciel le 14 juillet 1945\
      (#link("https://remonterletemps.ign.fr/telecharger/?lon=7.325373&lat=43.953506&z=14&pointer=true&layer=pva&year=1944&mission=3840-0131")[IGN, Mission 3840-0131, Cliché 5133, Échelle 1/26974])

      #let leg(num, content, color: black) = grid(
        columns: 2,
        column-gutter: 5pt,
        align: horizon,
        legend(color: color, size: 7pt, num), text(size: 7pt)[: #content],
      )
      #grid(
        columns: (1fr, 1fr, 1fr, 1fr),
        column-gutter: 1em,
        row-gutter: 5pt,
        align: center + horizon,
        leg("1", "Saint-Colomban"), leg("2", "Gorblaou"), leg("3", "Camari"),
        leg("4", "Béasse"),
        grid.cell(colspan: 2, leg("5", "La Couala de Guillerm", color: blue)),
        grid.cell(colspan: 2, leg("6", "Raynaud Soupran, Raynaud Soutran et Raynaudun", color: blue)),
      )
    ],
  )))
]

=== Saint-Colomban

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(image(".assets/st_col/saint-colomban dessus.jpg", width: 100%), caption: [
    Saint-Colomban vu du dessus
  ]),
  figure(image(".assets/st_col/saint-colomban face.jpg", width: 100%), caption: [
    Saint-Colomban vu d'en face
  ]),
))


#figure(
  image(
    ".assets/st_col/SAINT-COLOMBAN DE LANTOSQUE - 1 - Quartiers du Collet, de l'Eglise de Plena, Gléa-Lière.jpg",
    width: 80%,
  ),
  caption: [
    Saint-Colomban vu d'en face vers le début du siècle dernier. #footnote[
      On notera que l'éditeur de la carte postale a eu bien du mal à comprendre les noms de lieu qui lui était présenté puisqu'ils ont été assez fortement écorchées.

      Collet = Le Coulet ("Lo Colet" en occitan, ce qui se prononce "Lou Coulet", désigne une zone de rupture de pente)\
      Église de Plena = "Église de la plaine", du replat, aujourd'hui connu comme le quartier de la place (et où se situe toujours l'église de nos jours)\
      Gléa = Glèia ou Glèya (Que l'ont peut franciser en quartier de "l’église", nommé ainsi car l'église y était située auparavant)\
      Lière = L'Ièra (Au vu de l'étymologie, cela devait être une aire de battage)

      Le X sur l'église semble être une marque ultérieure à l'encre bleue.
    ]

    On observe dans la végétation à gauche une bâtisse actuellement chez Jean-Paul à l'Ièra.\
    _La maison de l'Escassa n'est pas visible car en contre-bas._
    Au dessus, les maisons de la Glèia.\
    Au premier plan, les deux maisons du coté gauche du Chemin des Maurins en descendant de l'église ainsi que l'église elle-même avec le presbytère. _La maison "des Thaons" en face de la place est cachée par l'église._\
    À droite, l'École, les maisons du Coulet et le transformateur électrique. Au dessus, le cimetière.
  ],
)

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(
    image(".assets/st_col/carte_postale_coulet.webp", width: 100%),
    caption: [Carte postale montrant la vue depuis la route sur le dessus du Coulet (quartier de Saint-Colomban)],
  ),
  figure(
    image(".assets/st_col/carte_postale_ecole.jpg", width: 100%),
    caption: [Carte postale montrant l'école et le lavoir au dessus du Coulet],
  ),
))

=== Gorblaou

#box(grid(
  columns: 2,
  gutter: 1em,
  [
    #figure(
      image(
        ".assets/gorblaou/SAINT-COLOMBAN DE LANTOSQUE - 6 - Quartier Gorbleau. Col de Rabul recto.jpg",
        width: 100%,
      ),
      caption: [
        Gorblaou vers le début du siècle dernier
      ],
    )
    #figure(image(".assets/gorblaou/gorblaou.jpg", width: 100%), caption: [
      Gorblaou
    ])
  ],
  figure(
    image(
      ".assets/gorblaou/SAINT-COLOMBAN DE LANTOSQUE - 7 - Le Pont de Gorbleau et le Moulin à farine.jpg",
      width: 100%,
    ),
    caption: [
      Le pont au dessus du vallon et le Moulin, en contre-bas de Gorblaou
    ],
  ),
))

=== Camari

#figure(image(".assets/camari/camari.jpg", width: 100%), caption: [
  Camari
])

=== Béasse (Lucéram)

Béasse, dit "Biassa" en occitan, est un hameau dorénavant en ruine et à l'abandon situé sur la commune de Lucéram.
Bien que situé à Lucéram, le hameau a toujours été rattaché à Saint-Colomban, tant par son origine que par sa proximité.

En effet, Béasse a été construit aux alentours de la fin du XVII#super[e] siècle / tout début du XVIII#super[e] siècle par les Ciais dit "_Ciaissi Boen_" #footnote([La première mention que j'ai trouvé date d'un #link("https://www.geneanet.org/archives/registres/view/17455/50?idmarqueur=19316721")[mariage du 13 novembre 1712] entre Jean Baptiste Ciais fils de Jean Antoine de Béasse et Antoronette Gaglio fille de Claude de Lantosque.\
  Marie Marguerite Ciais fille d'Antoine Sulpice Ciaissi Boen née le 07 janvier 1706 est par la suite dites native de Béasse lors de l'élaboration de la dot de sa fille Marie Catherine Maurin le 10 février 1755.]).

Un recensement daté d'août 1718 fait état de 27 personnes, 12 boeufs, 8 vaches, 2 veaux, 197 brebis et chèvres, 25 chevreaux, 10 agneaux et 4 porcs de consommation personnelles. À l'exception des Brun, tous les habitants sont des descendants de Jean Louis _Ciaissi Boen_.

#figure(
  caption: [Détail de la population recensée à Béasse en août 1718 #footnote([Selon la transcription de Jean-Nicolas BEASSE])],
)[
  #let data = csv(".assets/beasse/beasse_1718.csv")
  #let header-data = data.at(0)
  #let body-data = data.slice(1)

  #show table.cell: set text(size: .8em, hyphenate: false)
  #show table.cell: set par(justify: false)
  #show table.cell.where(y: 0): set text(weight: "bold", size: 1.1em)

  #let table-cells = ()
  #let i = 0

  #while i < body-data.len() {
    let current-val = body-data.at(i).at(0)
    let span = 1

    // Look ahead to see how many consecutive rows share the same first-column value
    while i + span < body-data.len() and body-data.at(i + span).at(0) == current-val {
      span += 1
    }

    // Push the rows in this span to our cell array
    for row-idx in range(0, span) {
      let actual-row-idx = i + row-idx
      let current-row = body-data.at(actual-row-idx)

      if row-idx == 0 {
        // First row of the group
        table-cells.push(table.cell(rowspan: span)[#current-val])
      } else {
        // Skip first column of subsequent rows of the group
      }

      // Push the remaining columns normally
      for col-val in current-row.slice(1) {
        table-cells.push([#col-val])
      }
    }

    i += span
  }

  // 2. Render the final table
  #table(
    columns: (auto, 1fr, 1fr, auto, auto),
    align: horizon + center,
    table.header(..header-data),
    ..table-cells,
  )
]

Les habitants de Béasse se mariaient pour la plupart à des gens de Saint-Colomban ou de Loda, qui étaient respectivement à 45 min et 1h15 de marche.

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(image(".assets/beasse/beasse_avant.jpg", width: 100%), caption: [
    Beasse autrefois
  ]),
  figure(image(".assets/beasse/beasse_maison_date.jpg", width: 100%), caption: [
    Date inscrite sur l'une des maisons\
    (Photo Arlette GALLI, 2006-09-22)
  ]),
))

Autour de 1978 #footnote[Déjà en ruine sur les photos aérienne de la #link("https://remonterletemps.ign.fr/telecharger/?lon=7.342103&lat=43.943941&z=14&pointer=true&layer=pva&year=1977&couleur=P&mission=3541-0041")[mission 3541-0041 du 03/09/1978] de l'IGN], la majorité des maisons sont détruite dans un incendie vraisemblablement criminel. On raconte qu'un mari découvrant que sa femme le trompait avec le voisin décida de se venger en mettant le feu à son habitation. Le feu prit un caractère incontrollable et se propagea à l'ensemble des maisons mitoyennes.

#figure(
  grid(
    columns: 2,
    gutter: 1em,
    image(".assets/beasse/IGNF_PVA_1-0__1979-08-14__C3441-0042_1979_FR9084_1148.jpg", width: 100%),
    image(".assets/beasse/IGNF_PVA_1-0__1979-08-14__C3441-0041_1978_FR9084_1148.jpg", width: 100%),
  ),
  caption: [
    Photos aériennes prisent le 14 août 1979, peu de temps après l'incendie ravageur\
    (#link("https://remonterletemps.ign.fr/telecharger/?lon=7.342845&lat=43.944625&z=14.5&pointer=true&layer=pva&year=1978&couleur=C&mission=3441-0042")[IGN, Mis. 3441-0042, Cliché 1148, Éch. 1/14203] et #link("https://remonterletemps.ign.fr/telecharger/?lon=7.342845&lat=43.944625&z=14.5&pointer=true&layer=pva&year=1978&couleur=C&mission=3441-0042")[IGN, Mis. 3441-0041, Cliché 1148, Éch. 1/14263])
  ],
)

#figure(
  grid(
    columns: 2,
    gutter: 1em,
    image(".assets/beasse/beasse_2022-12-18_face.jpg", width: 100%),
    image(".assets/beasse/beasse_2022-12-18_haut.jpg", width: 100%),
  ),
  caption: [
    Beasse le 18 décembre 2022
    (Photos #link("https://www.instagram.com/p/CmUEK0koakE/")[Laurent PLANSON CREQUER])
  ],
)

=== La Couala de Guillerm

Les terrains de la Colle ont été racheté, autour de 2020, par les Allari de Gorblaou qui ont entrepris des travaux de restauration sur l'une des granges ainsi que la création d'une piste à partir de la "Piste des Chasseurs" à Camari.

#figure(
  grid(
    columns: 3,
    gutter: 1em,
    image(".assets/colle/grange_sud_date.jpg", width: 100%),
    image(".assets/colle/grange_sud.jpg", width: 100%),
    image(".assets/colle/grange_sud_2.jpg", width: 100%),
  ),
  caption: [La grange la plus au sud, en contre-bas des autres. Elle est datée de 1851\ (Photos personnelles, 2021-08-07 et 2025-12-31 pour la dernière)],
)

#box(grid(
  columns: (66%, 33%),
  gutter: 1em,
  figure(
    grid(
      columns: 2,
      gutter: 1em,
      image(".assets/colle/grange_ouest_2021_2.jpg", width: 100%),
      image(".assets/colle/grange_ouest_2021.jpg", width: 100%),
    ),
    caption: [La grange ouest durant les travaux de restauration\
      (Photos personnelles, 2021-08-07)],
  ),
  figure(image(".assets/colle/grange_ouest_2025.jpg", width: 100%), caption: [
    La grange ouest après les travaux de restauration\
    (Photo personnelle, 2025-12-31)
  ]),
))

#figure(
  image(".assets/colle/grange_centre.jpg", width: 50%),
  caption: [La grange du centre (Photo personnelle, 2021-08-07)],
)

#figure(
  grid(
    columns: 3,
    gutter: 1em,
    image(".assets/colle/grange_est.jpg", width: 100%),
    image(".assets/colle/grange_est_2.jpg", width: 100%),
    image(".assets/colle/grange_est_3.jpg", width: 100%),
  ),
  caption: [La grange est (Photos personnelles, 2021-08-07)],
)

#box(figure(
  grid(
    columns: 2,
    gutter: 1em,
    image(".assets/colle/piste.jpg", width: 100%), image(".assets/colle/piste_2.jpg", width: 100%),
  ),
  caption: [La piste réalisée en deuxième partie de 2023 (Photos personnelles, 2023-11-03)],
))

#pagebreak()

== La religion

Une première chapelle, vraisemblablement dédiée à Saint-Colomban, était située dans le quartier de la Gleya. Une seconde chapelle aurait ensuite été édifiée à l'emplacement de l'église actuelle. Cette dernière acquit le statut d'église paroissiale durant la Révolution française et conserva ses propres registres officiels jusqu'en 1860, date de l'annexion du Comté de Nice par la France.

#figure(
  caption: [Section K du cadastre réalisé sous le Premier Empire vers 1808 montrant l'ancienne chapelle au centre en rouge (#link("https://archives06.fr/ark:/79346/783049.2781471")[CE P 196/10])],
  image(".assets/st_col/eglise/eglise_cadastre_1808_section-K_CE-P-0196-10.jpg", width: 70%),
)

L'édifice actuel, dédié à Saint-Étienne, fut achevé en 1844. Il est resté ancré dans la mémoire collective comme un agrandissement de l'ancienne chapelle, dont il subsisterait des vestiges visibles dans le renforcement situé à gauche du maître-autel, donnant accès au clocher.

Les matériaux nécessaires à sa construction auraient été transportés pierre par pierre depuis la vallée de la Vésubie. Leur quantité était telle que la maison en face, dite "des Thaons" (qui abritait un bar au siècle dernier), aurait été construite avec les pierres excédentaires.

Le clocher, ajouté ultérieurement, fut achevé en 1888. L'église subit des travaux de rénovation vers 1915, à la suite d'un incendie accidentel ayant détruit l'autel, puis à nouveau en 1933. La facade fut refaite par la mairie en août 2013.

#figure(caption: [Le maître-autel de l'église avant l'incendie de 1915], grid(
  columns: 2,
  gutter: 1em,
  image(".assets/st_col/eglise/eglise_maitre_autel_bef-1915.png", width: 100%),
  image(".assets/st_col/eglise/eglise_maitre_autel_bef-1915_verso.png", width: 100%),
))

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(
    caption: [L'église sous la neige (2011-01-30)],
    image(".assets/st_col/eglise/eglise_neige_2011-01-30.jpg"),
  ),
  figure(
    caption: [Une cloche (2010-10-30)],
    image(".assets/st_col/eglise/eglise_cloche_2010-10-30.jpg"),
  ),
))

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(
    caption: [L'église vue de derrière (2011-04-25)],
    image(".assets/st_col/eglise/eglise_derrière_2011-04-25.jpg"),
  ),
  figure(
    caption: [Le ravalement (2013-08-13)],
    image(".assets/st_col/eglise/eglise_ravalement_2013-08-13.jpg"),
  ),
))

#box(grid(
  columns: 3,
  gutter: 1em,
  figure(
    caption: [Photo réalisée au Polaroid (s.d.)],
    image(".assets/st_col/eglise/eglise_polaroid_s.d..jpg"),
  ),
  figure(
    caption: [L'église avant le ravalement (2010-04-22)],
    image("./.assets/st_col/eglise/eglise_2010-04-22.jpg"),
  ),
  figure(
    caption: [L'église de nos jours (2026-05-08)],
    image(".assets/st_col/eglise/eglise_2026-05-08.jpg"),
  ),
))

Une plaque commémorative rendant hommage aux habitants morts pour la France est apposée sur le mur gauche à l'entrée.

On prêtait aux cloches de Saint-Colomban le don d'éloigner les orages. #footnote[Un #link("/assets/RMC - Cloches de St Colomban.m4a")[reportage RMC] en relate]

#highlight[Parler du presbytère]

Le cimetière semble avoir été installé là où il se situe actuellement, entre 1808 et 1874.

== Les cafés et buvettes

Sur le chemin de la Gleya, dans la ruelle descendant à la place, on peut encore voir sur le haut d'une porte à droite en descendant l'enseigne d'un ancien café restaurant tenu par François et Philippine Thaon.

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(image(".assets/st_col/chemin_de_la_gleya_ruelle.jpg", width: 100%), caption: [
    La ruelle descendant à la place
  ]),
  figure(image(".assets/st_col/chemin_de_la_gleya_bar.jpg", width: 100%), caption: [
    L'enseigne du café restaurant de la place
  ]),
))

Une buvettes était présente au quartier du Coulet dans la maison à droite de la placette.

#figure(image(".assets/st_col/buvette_coulet.jpg", width: 60%), caption: [
  Photo d'avant le ravalement des façades qui a fait disparaître la mention de la buvette (\~1980)
])

== Les fours

Il y avait 3 fours, un au Coulet à Saint-Colomban, un à l'entrée du hameau de Camari et un dernier, à Béasse, sur le coté du chemin après l'école.

#highlight[Photos St Col et Camari]


#figure(image(".assets/beasse/beasse_four_avant.jpg", width: 50%), caption: [
  Le four à pain de Béasse tel qu'il était
  (Photo Jean-Nicolas BEASSE)
])
#box(grid(
  columns: 2,
  gutter: 1em,
  figure(
    [
      #image(".assets/beasse/beasse_four_pierres.jpg", width: 100%)
      #image(".assets/beasse/beasse_four_pierres_2006.jpg", width: 100%)
    ],
    caption: [
      Le même four après que des pierres aient été volés autour de 2006\
      (Photos Jean-Nicolas BEASSE et Arlette GALLI)
    ],
  ),
  figure(
    [
      #image(".assets/beasse/beasse_four_restauration.jpg", width: 100%)
      #image(".assets/beasse/beasse_four_restauration2.jpg", width: 100%)
    ],
    caption: [
      Le four a été quelque peu réarrangé début octobre 2022 (Photos #link("https://www.facebook.com/groups/21906880800/permalink/10160040968690801/")[Jackou Laugier] et #link("https://www.facebook.com/groups/21906880800/permalink/10160039939100801/")[Olon Nolo])
    ],
  ),
))

#pagebreak()

== L'éducation

Une école fut construite au dessus du quartier du Coulet à Saint-Colomban en 1xxx. Elle subit des réparations entre 1925 et 1931#footnote(link("https://archives06.fr/ark:/79346/1161435.2481670")[A.D.A.M. : E-dépôt 78 11 M 4 -- École de Saint-Colomban, réparation : plans, bordereau des prix, instructions préfectorales, délibérations, soumission, procès-verbaux d'adjudication et de réception des travaux, décompte définitif, arrêté de subvention, correspondance.]).

Les enfants de Béasse montaient et descendaient chaque jour à l'école de Saint-Colomban, ce qui représente environ trois quarts d'heure de marche.
Entre 1902 et 1908, une école y fut construite. Mais face à un exode rapide de la population de Béasse, elle fut contrainte de fermer, son nombre d'élève passant de 17 enfants en 1917 à seulement 3 en 1922, année de sa fermeture.

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(image(".assets/beasse/beasse_2011-04-25.jpg", width: 100%), caption: [
    L'école de Béasse est le bâtiment encore debut sur la droite de la photo (2011-04-25)
  ]),
  figure(image(".assets/beasse/beasse_école.jpg", width: 100%), caption: [
    L'escalier pour entrer à l'étage (2022-02-15)
  ]),
))

L'école de Saint-Colomban ferma à son tour en 19xx et fut reconvertie en gite. Puis, le gite fut contrait de fermer dans les années 2010 suite à une changement des normes en matière d'accessibilité, qui auraient nécessité des travaux, ce que la mairie n'a pas souhaité faire.

Jusque 2016#footnote[Conseil municipal du #link("/assets/Lantosque Autrement - Compte rendu conseil municipal 2016-10-17.pdf")[17/10/2016]], l'ancienne école de Saint-Colomban servait de bureau de vote lors des élections. Dorénavant, les électeurs de Saint-Colomban et Loda votent à Lantosque dans la salle Gilbert Gaglio.

#box(grid(
  columns: 2,
  gutter: 1em,
  figure(image(".assets/ecole-1930.jpg", width: 100%), caption: [
    Les enfants de l'école de Saint-Colomban en 1930 (col. Emma ROBINI)
  ]),
  figure(image(".assets/ecole-1930-noms.jpg", width: 100%), caption: [
    Photographie annotée avec le nom des enfants (réalisée pour une exposition)
  ]),
))

== La route

#highlight[Parler des anciens chemins et de ce qu'il en reste]

#box[
  Le pont au dessus de la Vésubie a été construit au alentours de 1883.

  #figure(
    caption: [Les Travaux Publics de la France - Défilé de Lantosque (1883)],
    image(".assets/route/Les Travaux Publics de la France - Défilé de Lantosque (1883).jpg"),
  )
]

#box[
  La première croix en vue de Saint-Colomban date de 1892 et à été restaurée par Jean-Marie Robini, mon arrière-grand-père, en 1992.

  #figure(
    caption: [La croix située au lieu-dit de _La Pointe_. La date de 1892 peut être lue sur le socle en béton.],
    image(".assets/route/croix_de_la_pointe.jpg", width: 45%),
  )
]

#box[
  Un éboulement était survenu (à une date que je ne saurais donner) au tout début de la route de Saint-Colomban en arrivant de Lantosque. Une grue avait alors été mise en place et a servie à libérer les véhicules pris au piège en amont.

  #figure(
    caption: [Grutage d'un véhicule suite au blocage de la route],
    image(".assets/route/eboulement_rte_st_col_grue.jpg", width: 50%),
  )
]

La route de Saint-Colomban à Camari (alors "Chemin vicinal n°5") a été construite entre 1862 et 1902#footnote(link("https://archives06.fr/ark:/79346/1161783.2481726")[A.D.A.M. : E-dépôt 78 4 O 20 -- Chemin vicinal n°5 "de Saint-Colomban" (du vallon de Guillerme au hameau de Camari).- Construction, classement : instructions préfectorales, rapports de l'agent-voyer, soumission, adjudication, correspondance.]) #footnote(link("https://archives06.fr/ark:/79346/1159169.2481261")[A.D.A.M. : E-dépôt 78 4 D 10 -- Procès de Louis Borriglione contre la commune pour occupation abusive d'un terrain lui appartenant, lors de la construction du chemin vicinal n° 5 à Saint-Colomban : correspondance.]).

La piste de la Maïris date quant à elle de 1922-1926#footnote(link("https://archives06.fr/ark:/79346/1161833.2481733")[A.D.A.M. : E-dépôt 78 4 O 27 -- Chemin rural de Camari à la Maïris, construction : plan, profils, devis, état parcellaire, mémoire explicatif; acte de constitution d'une association syndicale libre, délibérations, correspondance.]).

La route de Gorblaou date de 1974-1976 #footnote([
  #link("https://archives06.fr/ark:/79346/814985.2232060")[291 W 30]
]).

La construction de la route du cimetière a été faite sous l'impulsion de Jean-Marie Robini en 1978, faisant alors partie du conseil municipal. A cette occasion les arbres à droite en arrivant au cimetière ont été plantés. Le cyprès à gauche en montant la route, un peu avant d'arriver au chateau d'eau, a été planté ultérieurement par son épouse Emma Robini.\
Jean souhaitait faire continuer la route à partir du chateau d'eau jusqu'aux maisons de la Gleya, mais les propriétaires des terrains à traverser n'ont pas voulu les céder. Il y a dorénavant une antenne Bouygues Telecom à l'emplacement où aurait commencé cette route.

La piste des Maurins a été réalisée sous la municipalité Jean Thaon. Jean Robini, qui n'était alors plus au conseil, servi de médiateur pour négocier la cession des terrains necessaires. Il fut d'ailleurs un des principaux contributeurs terrien. Des murs ont été construit sur cette même piste aux alentours de 2001.

== L'eau

L'adduction de l'eau potable s'est fait aux alentours de 1900#footnote(link("https://archives06.fr/ark:/79346/1161853.2481738")[A.D.A.M. : E-dépôt 78 5 O 3 -- Hameaux de Camari et Saint-Colomban : pétition, délibérations, affiche d'adjudication, soumissions, rapport de l'ingénieur ordinaire, arrêté préfectoral, correspondance. ]).

Un canal d'irrigation partant la forêt de la Maïris et allant jusqu'à Saint-Colomban servait à arroser les champs. Il fut construit en 1925#footnote(link("https://archives06.fr/ark:/79346/1161889.2481744")[A.D.A.M. : E-dépôt 78 5 O 8 -- Construction et entretien : pétition, rapports de l'ingénieur, arrêté préfectoral, délibérations, acte de création d'association syndicale, devis, plan, correspondance.]).

Le vallon de Saint-Colomban dispose de plusieurs launes (dont la laune de l'Eléphant aux Oules et la laune du diable aux Maurins) où il était possible de se baigner. La baignade est dorénavant interdite par arrêté municipal en date du 04/08/2020 #footnote(link("/assets/Lantosque - Arrete municipal 2020-08-04.pdf")[Arrêté municipal n°010/2020 portant interdiction de la baignade dans l'ensemble du cours d'eau sis dans le vallon de Camari - St Colomban jusqu'à la Vésubie]) dans l'entièreté du vallon.

== Le festin

Tous les été, un festin est réalisé sur la place devant l'église.

#figure(
  caption: [Bons d'entrée pour le bal de septembre 1936],
  grid(
    columns: 2,
    gutter: 1em,
    image(".assets/st_col/festin_bons_1936_hommes.jpg"), image(".assets/st_col/festin_bons_1936_femmes.jpg"),
  ),
)

Les rambardes autour de la place et le "balcon" pour les musiciens (ou plus récemment le D.J.) ont été réalisés par Joseph Macri et Jean Robini en 1991.

#figure(
  caption: [Discours durant le festin de Juillet 1991],
  image(".assets/st_col/festin_juillet-1991.jpg"),
)

L'eau était fournis par les Robini, détenant la maison attenante à la place.

== La population

#figure(caption: [Evolution de la population de Saint-Colomban et de ses écarts], image(".assets/demographie.png"))

#figure(caption: [Population recensée à Saint-Colomban et dans ses écarts])[
  #let demographie = csv(".assets/demographie.csv")
  #let header-data = demographie.at(0)
  #let body-data = demographie.slice(1)

  #show table.cell: set text(size: .8em, hyphenate: false)
  #show table.cell: set par(justify: false)
  #show table.cell.where(y: 0): it => {
    set text(weight: "bold", size: 1.1em)
    if it.x > 2 {
      align(center + horizon, rotate(-75deg, reflow: true, it))
    } else {
      it
    }
  }

  #table(
    columns: (25%, 25%, 15%, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: horizon + center,
    table.header(..header-data),
    ..body-data.flatten(),
  )
]

== Le bâti

#link("https://www.google.com/maps/d/view?mid=1rW6JkY7RSwRCz1u5rN-LxLbp1iK0FFE&usp=sharing")

== L'agriculture

#highlight[TODO]
