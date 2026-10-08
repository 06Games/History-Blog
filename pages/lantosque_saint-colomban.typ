#import "/pages/prelude.typ": *
#import "@preview/lilaq:0.6.0" as lq

#show: sidebar-site.with(current: "Saint-Colomban (Lantosque)")
#set text(lang: "fr")

= Saint-Colomban

Saint-Colomban est un hameau de Lantosque, situé à 725 mètres d'altitude.

Les premiers peuplements de Saint-Colomban remonteraient au VIIe siècle selon la mairie de Lantosque #footnote(link("https://www.lantosque.fr/commune/histoire-et-patrimoine/")[Lantosque : Histoire et patrimoine]), mais je n'ai pu trouver de source pour le confirmer.

Le hameau est mentionné dans le cartulaire de la cathédrale de Nice au XIIe siècle#footnote(link("https://gallica.bnf.fr/ark:/12148/bpt6k59258/f447.item")[Étienne Clouzot, "Pouillés des provinces d'Aix, d'Arles et d'Embrun", p278]).

Les habitations sont décrites comme en ruine dans le registre d'"État des droits et revenus du comte Charles 1#super[er] en Provence" datant de 1252 #footnote[#link("https://odyssee.univ-amu.fr/files/original/1/532/FR_MMSH_MDQ_PRJ_MG_004.pdf")[Édouard Baratier, "Enquêtes sur les droits et revenus de Charles Ier d'Anjou en Provence (1252 et 1278)", 1969, p244] : #text(lang: "la", style: "italic")["San Columbar est castrum dirrutum, cujus territorium tenent homines de Lantoscha."] --- Saint-Colomban est un site fortifié en ruines, dont le territoire est tenu par les hommes de Lantosque.].

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
      #pad(5.75%, rotate(-98deg, fit-image(
        "/assets/lantosque-saint-colomban/IGNF_PVA_1-0__1945-07-14__C3840-0131_1945_MISSIONALPES16_5133.jpg",
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

      #let leg(num, content, color: black) = stack(
        dir: ltr,
        spacing: 4pt,
        legend(color: color, size: 7pt, num),
        text(size: 7pt, content),
      )

      #stack(
        spacing: 5pt,
        side-by-side(
          leg("1", "Saint-Colomban"),
          leg("2", "Gorblaou"),
          leg("3", "Camari"),
          leg("4", "Béasse"),
        ),
        side-by-side(
          leg("5", "La Couala de Guillerm", color: blue),
          leg("6", "Raynaud Soupran, Raynaud Soutran et Raynaudun", color: blue),
        ),
      )
    ],
  )))
]

=== Saint-Colomban

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/st_col/saint-colomban dessus.jpg", width: 100%), caption: [
    Saint-Colomban vu du dessus
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/st_col/saint-colomban face.jpg", width: 100%), caption: [
    Saint-Colomban vu d'en face
  ]),
)


#figure(
  fit-image(
    "/assets/lantosque-saint-colomban/st_col/SAINT-COLOMBAN DE LANTOSQUE - 1 - Quartiers du Collet, de l'Eglise de Plena, Gléa-Lière.jpg",
    width: 80%,
  ),
  caption: [
    Saint-Colomban vu d'en face vers le début du siècle dernier. #footnote[
      On notera que l'éditeur de la carte postale a eu bien du mal à comprendre les noms de lieu qui lui étaient présentés puisqu'ils ont été assez fortement écorchés.

      Collet = Le Coulet ("Lo Colet" en occitan, ce qui se prononce "Lou Coulet", désigne une zone de rupture de pente)\
      Église de Plena = "Église de la plaine", du replat, aujourd'hui connu comme le quartier de la place (et où se situe toujours l'église de nos jours)\
      Gléa = Glèia ou Glèya (Que l'on peut franciser en quartier de "l’église", nommé ainsi car l'église y était située auparavant)\
      Lière = L'Ièra (Au vu de l'étymologie, cela devait être une aire de battage)

      Le X sur l'église semble être une marque ultérieure à l'encre bleue.
    ]

    On observe dans la végétation à gauche une bâtisse chez les héritiers Durante (Guillon notamment) à l'Ièra.\
    _La maison de l'Escassa n'est pas visible car en contrebas._
    Au-dessus, les maisons de la Glèia.\
    Au premier plan, les deux maisons du côté gauche du Chemin des Maurins en descendant de l'église ainsi que l'église elle-même avec le presbytère. _La maison "des Thaons" en face de la place est cachée par l'église._\
    À droite, l'École, les maisons du Coulet et le transformateur électrique. Au-dessus, le cimetière.
  ],
)

#side-by-side(
  figure(
    fit-image("/assets/lantosque-saint-colomban/st_col/carte_postale_coulet.webp", width: 100%),
    caption: [Carte postale montrant la vue depuis la route sur le dessus du Coulet (quartier de Saint-Colomban)],
  ),
  figure(
    fit-image("/assets/lantosque-saint-colomban/st_col/carte_postale_ecole.jpg", width: 100%),
    caption: [Carte postale montrant l'école et le lavoir au-dessus du Coulet],
  ),
)

=== Gorblaou

#side-by-side(
  [
    #figure(
      fit-image(
        "/assets/lantosque-saint-colomban/gorblaou/SAINT-COLOMBAN DE LANTOSQUE - 6 - Quartier Gorbleau. Col de Rabul recto.jpg",
        width: 100%,
      ),
      caption: [
        Gorblaou vers le début du siècle dernier
      ],
    )
    #figure(fit-image("/assets/lantosque-saint-colomban/gorblaou/gorblaou.jpg", width: 100%), caption: [
      Gorblaou
    ])
  ],
  figure(
    fit-image(
      "/assets/lantosque-saint-colomban/gorblaou/SAINT-COLOMBAN DE LANTOSQUE - 7 - Le Pont de Gorbleau et le Moulin à farine.jpg",
      width: 100%,
    ),
    caption: [
      Le pont au-dessus du vallon et le Moulin, en contrebas de Gorblaou
    ],
  ),
)

=== Camari

#figure(fit-image("/assets/lantosque-saint-colomban/camari/camari.jpg", width: 100%), caption: [
  Camari
])

=== Béasse (Lucéram)

Béasse, dit "Biassa" en occitan, est un hameau dorénavant en ruine et à l'abandon situé sur la commune de Lucéram.
Bien que situé à Lucéram, le hameau a toujours été rattaché à Saint-Colomban, tant par son origine que par sa proximité.

En effet, Béasse a été construit aux alentours de la fin du XVII#super[e] siècle / tout début du XVIII#super[e] siècle par les Ciais dit "_Ciaissi Boen_" #footnote([La première mention que j'ai trouvée date d'un #link("https://www.geneanet.org/archives/registres/view/17455/50?idmarqueur=19316721")[mariage du 13 novembre 1712] entre Jean Baptiste Ciais fils de Jean Antoine de Béasse et Antoronette Gaglio fille de Claude de Lantosque.\
  Marie Marguerite Ciais fille d'Antoine Sulpice Ciaissi Boen née le 07 janvier 1706 est par la suite dite native de Béasse lors de l'élaboration de la dot de sa fille Marie Catherine Maurin le 10 février 1755.]).

Un recensement daté d'août 1718 fait état de 27 personnes, 12 bœufs, 8 vaches, 2 veaux, 197 brebis et chèvres, 25 chevreaux, 10 agneaux et 4 porcs de consommation personnelle. À l'exception des Brun, tous les habitants sont des descendants de Jean Louis _Ciaissi Boen_.

#figure(
  caption: [Détail de la population recensée à Béasse en août 1718 #footnote([Selon la transcription de Jean-Nicolas BEASSE])],
)[
  #let data = csv("/assets/lantosque-saint-colomban/beasse/beasse_1718.csv")
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

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/beasse/beasse_avant.jpg", width: 100%), caption: [
    Béasse autrefois
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/beasse/beasse_maison_date.jpg", width: 100%), caption: [
    Date inscrite sur l'une des maisons\
    (Photo Arlette GALLI, 2006-09-22)
  ]),
)

Autour de 1978 #footnote[Déjà en ruine sur les photos aériennes de la #link("https://remonterletemps.ign.fr/telecharger/?lon=7.342103&lat=43.943941&z=14&pointer=true&layer=pva&year=1977&couleur=P&mission=3541-0041")[mission 3541-0041 du 03/09/1978] de l'IGN], la majorité des maisons furent détruites dans un incendie vraisemblablement criminel. On raconte qu'un mari découvrant que sa femme le trompait avec le voisin décida de se venger en mettant le feu à son habitation. Le feu prit un caractère incontrôlable et se propagea à l'ensemble des maisons mitoyennes.

#figure(
  side-by-side(
    fit-image(
      "/assets/lantosque-saint-colomban/beasse/IGNF_PVA_1-0__1979-08-14__C3441-0042_1979_FR9084_1148.jpg",
      width: 100%,
    ),
    fit-image(
      "/assets/lantosque-saint-colomban/beasse/IGNF_PVA_1-0__1979-08-14__C3441-0041_1978_FR9084_1148.jpg",
      width: 100%,
    ),
  ),
  caption: [
    Photos aériennes prises le 14 août 1979, peu de temps après l'incendie ravageur\
    (#link("https://remonterletemps.ign.fr/telecharger/?lon=7.342845&lat=43.944625&z=14.5&pointer=true&layer=pva&year=1978&couleur=C&mission=3441-0042")[IGN, Mis. 3441-0042, Cliché 1148, Éch. 1/14203] et #link("https://remonterletemps.ign.fr/telecharger/?lon=7.342845&lat=43.944625&z=14.5&pointer=true&layer=pva&year=1978&couleur=C&mission=3441-0042")[IGN, Mis. 3441-0041, Cliché 1148, Éch. 1/14263])
  ],
)

#figure(
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/beasse/beasse_2022-12-18_face.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/beasse/beasse_2022-12-18_haut.jpg", width: 100%),
  ),
  caption: [
    Béasse le 18 décembre 2022
    (Photos #link("https://www.instagram.com/p/CmUEK0koakE/")[Laurent PLANSON CREQUER])
  ],
)

=== La Couala de Guillerm

Les terrains de la Colle ont été rachetés, autour de 2020, par les Allari de Gorblaou qui ont entrepris des travaux de restauration sur l'une des granges ainsi que la création d'une piste à partir de la "Piste des Chasseurs" à Camari.

#figure(
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/colle/grange_sud_date.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/grange_sud.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/grange_sud_2.jpg", width: 100%),
  ),
  caption: [La grange la plus au sud, en contrebas des autres. Elle est datée de 1851\ (Photos personnelles, 2021-08-07 et 2025-12-31 pour la dernière)],
)

#figure(
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/colle/grange_ouest_2021_2.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/grange_ouest_2021.jpg", width: 100%),
  ),
  caption: [La grange ouest durant les travaux de restauration\
    (Photos personnelles, 2021-08-07)],
)
#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/colle/grange_ouest_2025.jpg", width: 100%), caption: [
    La grange ouest après les travaux de restauration\
    (Photo personnelle, 2025-12-31)
  ]),
  figure(
    fit-image("/assets/lantosque-saint-colomban/colle/grange_centre.jpg", width: 100%),
    caption: [La grange du centre\ (Photo personnelle, 2021-08-07)],
  ),
)

#figure(
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/colle/grange_est.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/grange_est_2.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/grange_est_3.jpg", width: 100%),
  ),
  caption: [La grange est (Photos personnelles, 2021-08-07)],
)

#figure(
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/colle/piste.jpg", width: 100%),
    fit-image("/assets/lantosque-saint-colomban/colle/piste_2.jpg", width: 100%),
  ),
  caption: [La piste réalisée en deuxième partie de 2023 (Photos personnelles, 2023-11-03)],
)

#pagebreak()

== La religion

Une première chapelle, vraisemblablement dédiée à Saint-Colomban, se trouvait sans doute dans le quartier de la Gleya #footnote[Solenne Szys, "La vallée de St Colomban (Saint-Colomban, Gorblaou, Camari) - Territoire de Lantosque : Éléments d'histoire d'une communauté oubliée", _AMONT, Pays vésubien_, n° 1, 2000, p. 2.]. Une seconde chapelle a ensuite été bâtie à l'emplacement de l'église actuelle. Cette dernière devint église paroissiale à la Révolution et tint des registres ayant valeur d'état civil jusqu'en 1860, date du rattachement du Comté de Nice à la France.

Le saint patron faisait l'objet d'une dévotion particulière en raison de ses vertus thaumaturgiques #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", portail _Vesubian_ (vesubian.com).] : la tradition lui prêtait le don de rendre la parole aux muets grâce à l'eau d'une source jaillissant près d'une ferme. Des familles venaient à pied des vallées voisines avec leurs enfants dans l'espoir d'une guérison, ce qui avait inspiré une boutade locale : "Tiens, celui-là il vient de St Colomban !" pour désigner une personne très bavarde.

#figure(
  caption: [Section K du cadastre réalisé sous le Premier Empire vers 1808 montrant l'ancienne chapelle au centre en rouge (#link("https://archives06.fr/ark:/79346/783049.2781471")[CE P 196/10])],
  fit-image(
    "/assets/lantosque-saint-colomban/st_col/eglise/eglise_cadastre_1808_section-K_CE-P-0196-10.jpg",
    width: 70%,
  ),
)

L'église actuelle, placée sous le vocable de Saint-Étienne, fut terminée en 1844 #footnote[Solenne Szys, op. cit., p. 3.]. La mémoire locale y voit l'agrandissement de l'ancienne chapelle, dont un vestige subsisterait dans le renfoncement à gauche du maître-autel menant au clocher.

Sa construction mobilisa largement les habitants : chacun aurait monté des pierres depuis la Vésubie en venant à la messe #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit. ; Solenne Szys, op. cit., p. 3.], tandis que les poutres de charpente auraient été acheminées depuis Béasse #footnote[Solenne Szys, op. cit., p. 3.]. Les pierres auraient été apportées en telle quantité que l'excédent aurait permis d'élever la maison située juste en face de la place ; celle-ci revint à la famille Thaon, à laquelle appartenait le curé de l'époque.

Le clocher, ajouté ultérieurement, fut achevé en 1888 #footnote[Solenne Szys, op. cit., p. 3.]. L'église connut des travaux de rénovation après un incendie accidentel de l'autel en 1915 #footnote[Le mémoire du portail _Vesubian_ indique 1907, mais l'annotation manuscrite au dos d'une photographie d'époque confirme bien 1915, date également retenue par Solenne Szys (op. cit., p. 3).], puis à nouveau en 1933. La mairie fit refaire la façade en août 2013.

#figure(caption: [Le maître-autel de l'église avant l'incendie de 1915 (col. Emma ROBINI)], side-by-side(
  fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_maitre_autel_bef-1915.png", width: 100%),
  fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_maitre_autel_bef-1915_verso.png", width: 100%),
))

#side-by-side(
  figure(
    caption: [L'église sous la neige (2011-01-30)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_neige_2011-01-30.jpg"),
  ),
  figure(
    caption: [Une cloche (2010-10-30)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_cloche_2010-10-30.jpg"),
  ),
)

#side-by-side(
  figure(
    caption: [L'église vue de derrière (2011-04-25)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_derrière_2011-04-25.jpg"),
  ),
  figure(
    caption: [Le ravalement (2013-08-13)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_ravalement_2013-08-13.jpg"),
  ),
)

#side-by-side(
  figure(
    caption: [Photo réalisée au Polaroid (s.d.)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_polaroid_s.d..jpg"),
  ),
  figure(
    caption: [L'église avant le ravalement (2010-04-22)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_2010-04-22.jpg"),
  ),
  figure(
    caption: [L'église de nos jours (2026-05-08)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/eglise_2026-05-08.jpg"),
  ),
)

Le presbytère est situé directement derrière le chevet, avec le logement du desservant à l'étage #footnote[Solenne Szys, op. cit., p. 3.]. Il a également été réparé en 1933 #footnote[Solenne Szys, op. cit., p. 3.]. De nos jours, le bâtiment tombe en ruine : il n'est plus hors d'eau, un pan de mur s'est ouvert et un autre montre des signes d'affaissement au niveau des fenêtres. Sur la toiture, des pierres posées il y a plusieurs décennies comme solution provisoire menacent de glisser. Le balcon s'est effondré et la toiture d'un des deux petits cabanons attenants s'écroule. Lors du ravalement de 2013, seule la façade du presbytère visible depuis la place a été refaite, le reste fut laissé en l'état.

#side-by-side(
  figure(
    caption: [Façade est du presbytère (2020-07-28)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/presbytere_vue_est_2020-07-28.jpg"),
  ),
  figure(
    caption: [Vue nord-est du presbytère (2026-05-14)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/presbytere_vue_nord-est_2026-05-14.jpg"),
  ),

  figure(
    caption: [Façade sud du presbytère (2026-08-23)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/presbytere_vue_sud_2026-08-23.jpg"),
  ),
  figure(
    caption: [Le cabanon dont le toit s'écroule (2026-08-23)],
    fit-image("/assets/lantosque-saint-colomban/st_col/eglise/presbytere_cabanon_2026-08-23.jpg"),
  ),
)

L'édifice surprend par ses dimensions au regard de l'isolement du hameau #footnote[Solenne Szys, op. cit., p. 3.]. La nef unique compte trois travées en plein cintre et reçoit le jour par trois fenêtres sur le flanc droit et deux sur le flanc gauche #footnote[Solenne Szys, op. cit., p. 3.]. La grande porte d'entrée et les bancs en bois, longtemps réservés aux familles du lieu par attribution nominative, auraient été façonnés par un menuisier du quartier Saint-Georges à Lantosque #footnote[Solenne Szys, op. cit., p. 3.].

L'espace liturgique s'organise autour du chœur et de deux chapelles latérales #footnote[Solenne Szys, op. cit., p. 3.] :
- Au fond, le maître-autel est bien détaché du chevet. Il porte une toile figurant la Vierge à l'Enfant au centre, entourée à sa gauche de saint Sébastien (représenté en martyr, les bras attachés au-dessus de la tête) et, à ses pieds, de deux autres personnages : l'un lisant, à gauche, l'autre un évêque, à droite #footnote[Solenne Szys, op. cit., p. 3.].
- Dans la chapelle latérale droite, l'autel, sans doute dédié à la Vierge, accueille une Pietà et conserve deux bannières de procession : une des Jeunes Filles de Marie (une Vierge étoilée dominant un serpent et des nuages, motif de l'Apocalypse courant dans la Vésubie comme à Roquebillière ou Saint-Martin-Vésubie) et une autre figurant le mariage de Marie et Joseph #footnote[Solenne Szys, op. cit., p. 3.].
- Dans la chapelle latérale gauche, l'autel dédié à saint Colomban abrite une statue et un tableau du saint protecteur aux côtés de saint Sébastien et d'un moine franciscain rappelant le monastère des Mineurs de Lantosque, sous la protection de l'Ange gardien et de saint Antoine de Padoue. Deux croix de procession (croce) de la Confrérie des Pénitents blancs y sont appuyées contre le mur, ornées de deux pénitents en prière tournés vers la croix #footnote[Solenne Szys, op. cit., p. 3.].

Une plaque commémorative rendant hommage aux habitants morts pour la France est apposée sur le mur gauche à l'entrée.

On prêtait aux cloches de Saint-Colomban le don d'éloigner les orages #footnote[Un #link("/assets/lantosque-saint-colomban/st_col/eglise/RMC - Cloches de St Colomban.mp3")[reportage RMC] en relate].

#context {
  if target() == "html" {
    figure(
      caption: [Enregistrement d'un reportage RMC sur le pouvoir prêté aux cloches contre les orages\ (col. Emma Robini, vers le début des années 1990)\ Reportage : Paul Barelli ; Intervenants : M. Zaniboni, Denise Thaon, Jean-Marie Robini],
      [
        #html.audio(
          src: "/assets/lantosque-saint-colomban/st_col/eglise/RMC - Cloches de St Colomban.mp3",
          controls: true,
          loop: false,
        )
      ],
    )
  }
}

Au-delà de l'office religieux, la messe dominicale était l'occasion pour les habitants de se retrouver, d'échanger les nouvelles et de s'organiser pour les travaux et coups de main de la semaine #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

À droite de l'édifice, une petite pièce servait à l'origine de cimetière _ad sanctos_ #footnote[Solenne Szys, op. cit., p. 3.]. La terre et le sable nécessaires aux inhumations y auraient été montés à dos d'homme dans des récipients confectionnés à partir de fonds d'épicéa #footnote[Solenne Szys, op. cit., p. 3.]. Le cimetière communal actuel, situé plus haut et dominant le hameau, semble quant à lui avoir été aménagé entre 1808 et 1874.

#figure(
  caption: [Le cimetière actuel (2020-08-03)],
  fit-image("/assets/lantosque-saint-colomban/st_col/eglise/cimetiere_2020-08-03.jpg"),
)

#pagebreak()

== Le bâti

#highlight[WIP: #link("https://www.google.com/maps/d/view?mid=1rW6JkY7RSwRCz1u5rN-LxLbp1iK0FFE&usp=sharing")]

L'implantation des habitations a été guidée par le relief et la recherche d'une exposition à l'adret pour profiter au maximum de l'ensoleillement #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", portail _Vesubian_ (vesubian.com).].

La disposition varie selon les secteurs de la vallée :
- Saint-Colomban présente un habitat dispersé le long du versant #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.] #footnote[Solenne Szys, "La vallée de St Colomban (Saint-Colomban, Gorblaou, Camari) - Territoire de Lantosque : Éléments d'histoire d'une communauté oubliée", _AMONT, Pays vésubien_, n° 1, 2000, p. 1.].
- Gorblaou est formé de maisons groupées sur la rive gauche, surplombant le cours d'eau et les champs #footnote[Solenne Szys, op. cit., p. 1.] #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].
- Camari s'étire le long de la route, ses habitations se resserrant autour du four, de la fontaine et de l'abreuvoir #footnote[Solenne Szys, op. cit., p. 1.].

Les maisons répondent à un modèle d'architecture en pierres sur plusieurs niveaux, tirant parti de la pente #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.] :
- le rez-de-chaussée est réservé à l'écurie pour les bêtes #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.] ;
- le premier niveau comprend les pièces d'habitation (cuisine avec le foyer, salle commune et chambres) #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.] ;
- le dernier niveau sous les toits sert de grenier pour le foin et les récoltes #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

Le dénivelé permettait souvent un accès de plain-pied à deux niveaux distincts, complété à l'intérieur par des escaliers, échelles ou trappes #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les murs étaient montés très épais avec des ouvertures de faible dimension afin de limiter les déperditions de chaleur en hiver et de conserver la fraîcheur en été #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les toitures, à un ou deux versants simples, sont couvertes de tuiles rondes #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

#pagebreak()

== L'agriculture et les ressources

L'économie de la vallée reposait sur un système agropastoral traditionnel proche de l'autarcie #footnote[Solenne Szys, "La vallée de St Colomban (Saint-Colomban, Gorblaou, Camari) - Territoire de Lantosque : Éléments d'histoire d'une communauté oubliée", _AMONT, Pays vésubien_, n° 1, 2000, p. 2.] #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", portail _Vesubian_ (vesubian.com).]. Chaque famille assurait l'essentiel de sa subsistance en produisant ses céréales, ses légumes, ses fruits, son vin, sa viande et ses fromages #footnote[Solenne Szys, op. cit., p. 2.] #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les achats extérieurs demeuraient limités à des ustensiles, des outils et quelques denrées indispensables comme le sucre, le café ou le sel #footnote[Solenne Szys, op. cit., p. 2.] #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Ce dernier arrivait par la Route Ducale traversant la Vésubie et servait principalement à la conservation des aliments #footnote[Solenne Szys, op. cit., p. 2.].

Le relief accidenté imposait un aménagement méthodique des versants en terrasses (_faïsses_) soutenues par des murets en pierres sèches #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Ces murs étaient bâtis de façon à retenir la terre meuble tout en laissant s'infiltrer et s'évacuer les eaux de pluie #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Le secteur de Camari regroupait les terrasses les plus vastes et les mieux ensoleillées #footnote[Solenne Szys, op. cit., p. 1.], tandis que les versants au sud de Saint-Colomban, aujourd'hui entièrement boisés, étaient autrefois cultivés en blé, orge et avoine #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les sentiers muletiers qui desservaient ces parcelles disséminées demandaient un entretien permanent, particulièrement en hiver où le verglas rendait les passages glissants et dangereux #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

Les céréales moissonnées en juillet étaient entreposées dans les greniers des habitations, les familles veillant par précaution à garder une récolte d'avance pour parer aux années difficiles #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les pentes portaient également des oliviers fournissant la consommation familiale en huile #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.], ainsi que des vergers fruitiers #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Les prunes Reine-Claude étaient particulièrement réputées dans le pays : des primeurs montaient les acheter sur pied pour alimenter les étals des marchés de Lantosque et de Levens, et des boîtes de pruneaux séchés étaient même exportées jusqu'en Angleterre #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

L'élevage complétait cette polyculture vivrière #footnote[Solenne Szys, op. cit., p. 2.]. Les bovins partaient en estive durant la période estivale sur les pâturages de la Maïris, tandis que les chèvres restaient gardées au village #footnote[Solenne Szys, op. cit., p. 1-2.]. Chaque foyer possédait une basse-cour de poules et de lapins, ainsi qu'un ou deux cochons engraissés puis tués vers Noël pour fournir des réserves de viande sur plusieurs mois #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

La forêt de la Maïris représentait un ensemble foncier déterminant, comptant 37 hectares de terres potagères arrosables, 18 hectares de châtaigneraies et 217 hectares de bois et de pacages #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. Ses boisements de feuillus et de mélèzes furent par ailleurs exploités sous l'administration piémontaise pour la construction navale des ports ligures (quais et pontons), les billots étant descendus par câbles et flottage, bien avant la création de pistes carrossables #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

== Les équipements collectifs

L'économie pastorale et vivrière imposait l'entretien d'équipements collectifs indispensables à la transformation locale des récoltes #footnote[Solenne Szys, "La vallée de St Colomban (Saint-Colomban, Gorblaou, Camari) - Territoire de Lantosque : Éléments d'histoire d'une communauté oubliée", _AMONT, Pays vésubien_, n° 1, 2000, p. 2.].

=== Les fours à pain

Le pain était cuit une fois par semaine lors de fournées collectives, ce qui explique l'absence de boulangerie commerciale dans la vallée #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", portail _Vesubian_ (vesubian.com).].

Trois fours assuraient ces besoins :
- Le four du Coulet à Saint-Colomban, daté du début du XVIIIe siècle (1715 ou 1719) #footnote[Solenne Szys, op. cit., p. 2.].
- Le four situé à l'entrée de Camari, construit en 1896 puis restauré #footnote[Solenne Szys, op. cit., p. 2.].
- Le four de Béasse, bâti en bordure du chemin après l'école.

Le hameau de Gorblaou ne disposait quant à lui d'aucun four propre #footnote[Solenne Szys, op. cit., p. 2.].

#highlight[Photos St Col et Camari]

#figure(fit-image("/assets/lantosque-saint-colomban/beasse/beasse_four_avant.jpg", width: 50%), caption: [
  Le four à pain de Béasse tel qu'il était
  (Photo Jean-Nicolas BEASSE)
])
#side-by-side(
  figure(
    [
      #fit-image("/assets/lantosque-saint-colomban/beasse/beasse_four_pierres.jpg", width: 100%)
      #fit-image("/assets/lantosque-saint-colomban/beasse/beasse_four_pierres_2006.jpg", width: 100%)
    ],
    caption: [
      Le même four après que des pierres ont été volées autour de 2006\
      (Photos Jean-Nicolas BEASSE et Arlette GALLI)
    ],
  ),
  figure(
    [
      #fit-image("/assets/lantosque-saint-colomban/beasse/beasse_four_restauration.jpg", width: 100%)
      #fit-image("/assets/lantosque-saint-colomban/beasse/beasse_four_restauration2.jpg", width: 100%)
    ],
    caption: [
      Le four a été quelque peu réarrangé début octobre 2022 (Photos #link("https://www.facebook.com/groups/21906880800/permalink/10160040968690801/")[Jackou Laugier] et #link("https://www.facebook.com/groups/21906880800/permalink/10160039939100801/")[Olon Nolo])
    ],
  ),
)

=== Le moulin

Un moulin à roue verticale était établi au fond du vallon en contrebas de Gorblaou #footnote[Solenne Szys, op. cit., p. 2.]. Ce moulin mixte servait à la fois à moudre les céréales (seigle et froment) et à presser les olives pour l'huile #footnote[Solenne Szys, op. cit., p. 2.].

Son activité demeurait toutefois saisonnière en raison du manque d'eau et du tarissement estival du vallon #footnote[Solenne Szys, op. cit., p. 2.]. Au début du XXe siècle, son exploitation fut placée sous régie, au même titre que la production locale de vin et d'alcool #footnote[Solenne Szys, op. cit., p. 2.].

Le moulin a depuis été reconverti en maison d'habitation.

#pagebreak()

== L'éducation

Une école fut construite au-dessus du quartier du Coulet à Saint-Colomban en 1xxx. Elle subit des réparations entre 1925 et 1931#footnote(link("https://archives06.fr/ark:/79346/1161435.2481670")[A.D.A.M. : E-dépôt 78 11 M 4 -- École de Saint-Colomban, réparation : plans, bordereau des prix, instructions préfectorales, délibérations, soumission, procès-verbaux d'adjudication et de réception des travaux, décompte définitif, arrêté de subvention, correspondance.]).

Les enfants de Béasse montaient et descendaient chaque jour à l'école de Saint-Colomban, ce qui représente environ trois quarts d'heure de marche.
Entre 1902 et 1908, une école y fut construite. Mais face à un exode rapide de la population de Béasse, elle fut contrainte de fermer, son nombre d'élèves passant de 17 enfants en 1917 à seulement 3 en 1922, année de sa fermeture.

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/beasse/beasse_2011-04-25.jpg", width: 100%), caption: [
    L'école de Béasse est le bâtiment encore debout sur la droite de la photo (2011-04-25)
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/beasse/beasse_école.jpg", width: 100%), caption: [
    L'escalier pour entrer à l'étage (2022-02-15)
  ]),
)

L'école de Saint-Colomban ferma à son tour en 19xx et fut reconvertie en gîte. Puis, le gîte fut contraint de fermer dans les années 2010 suite à un changement des normes en matière d'accessibilité, qui auraient nécessité des travaux, ce que la mairie n'a pas souhaité faire.

Jusqu'en 2016#footnote[Conseil municipal du #link("/assets/Lantosque Autrement - Compte rendu conseil municipal 2016-10-17.pdf")[17/10/2016]], l'ancienne école de Saint-Colomban servait de bureau de vote lors des élections. Dorénavant, les électeurs de Saint-Colomban et Loda votent à Lantosque dans la salle Gilbert Gaglio.

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/ecole-1930.jpg", width: 100%), caption: [
    Les enfants de l'école de Saint-Colomban en 1930 (col. Emma ROBINI)
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/ecole-1930-noms.jpg", width: 100%), caption: [
    Photographie annotée avec le nom des enfants (réalisée pour une exposition)
  ]),
)

== La route

#highlight[Parler des anciens chemins et de ce qu'il en reste]

#box[
  Le pont au-dessus de la Vésubie a été construit aux alentours de 1883.

  #figure(
    caption: [Les Travaux Publics de la France - Défilé de Lantosque (1883)],
    fit-image(
      "/assets/lantosque-saint-colomban/route/Les Travaux Publics de la France - Défilé de Lantosque (1883).jpg",
    ),
  )
]

#box[
  La première croix en vue de Saint-Colomban date de 1892 et a été restaurée par Jean-Marie Robini, mon arrière-grand-père, en 1992.

  #figure(
    caption: [La croix située au lieu-dit de _La Pointe_. La date de 1892 peut être lue sur le socle en béton.],
    fit-image("/assets/lantosque-saint-colomban/route/croix_de_la_pointe.jpg", width: 45%),
  )
]

#box[
  Un éboulement était survenu (à une date que je ne saurais donner) au tout début de la route de Saint-Colomban en arrivant de Lantosque. Une grue avait alors été mise en place et a servi à libérer les véhicules pris au piège en amont.

  #figure(
    caption: [Grutage d'un véhicule suite au blocage de la route],
    fit-image("/assets/lantosque-saint-colomban/route/eboulement_rte_st_col_grue.jpg", width: 50%),
  )
]

La route de Saint-Colomban à Camari (alors "Chemin vicinal n°5") a été construite entre 1862 et 1902#footnote(link("https://archives06.fr/ark:/79346/1161783.2481726")[A.D.A.M. : E-dépôt 78 4 O 20 -- Chemin vicinal n°5 "de Saint-Colomban" (du vallon de Guillerme au hameau de Camari).- Construction, classement : instructions préfectorales, rapports de l'agent-voyer, soumission, adjudication, correspondance.]) #footnote(link("https://archives06.fr/ark:/79346/1159169.2481261")[A.D.A.M. : E-dépôt 78 4 D 10 -- Procès de Louis Borriglione contre la commune pour occupation abusive d'un terrain lui appartenant, lors de la construction du chemin vicinal n° 5 à Saint-Colomban : correspondance.]).

La piste de la Maïris date quant à elle de 1922-1926#footnote(link("https://archives06.fr/ark:/79346/1161833.2481733")[A.D.A.M. : E-dépôt 78 4 O 27 -- Chemin rural de Camari à la Maïris, construction : plan, profils, devis, état parcellaire, mémoire explicatif; acte de constitution d'une association syndicale libre, délibérations, correspondance.]).

En 1873, le sentier de Béasse (alors "Chemin vicinal ordinaire n° 6") fait l'objet d'un élargissement dans sa portion sud vers Lucéram. #footnote([
  #link("https://archives06.fr/ark:/79346/1189628.2466393")[E-dépôt 126 148 4 O 21. Chemin vicinal ordinaire n° 6 dit "de Béasse", de Lucéram au hameau de Béasse. - Élargissement : plan et tableau parcellaire des terrains à occuper, arrêté de la Commission départementale des chemins portant approbation du projet, instruction de la Préfecture, correspondance (1873). 5 pièces.]
])\
De 1933 à 1950, les habitants de Béasse se sont regroupés en un "Syndicat agricole de Béasse" pour demander la construction d'une piste reliant Saint-Colomban à Béasse en passant par Gorblaou. La municipalité de Lantosque s'était dite intéressée par le projet dans le cadre de la desserte de Gorblaou. Malgré une pétition signée par 52 propriétaires riverains, ce projet ne verra jamais le jour. #footnote([
  #link("https://archives06.fr/ark:/79346/1189636.2466394")[E-dépôt 126 149 4 O 34. Chemin rural du hameau de Béasse au hameau de Saint-Colomban. - Construction, entretien, réparations : instructions préfectorales, pétition signée par 52 propriétaires riverains, membres du "Syndicat agricole de Béasse" demandant la construction du chemin, délibérations, courrier du Ministre de l'Agriculture au préfet, copies de délibérations de la municipalité de Lantosque, intéressée dans le projet pour la desserte du quartier de Gorbleau, courrier du directeur de l'"Association syndicale du chemin de Béasse", correspondance (1933-1950). 1 liasse.]
])\
Une route jusqu'à Gorblaou sera finalement construite entre 1974 et 1976 #footnote([
  #link("https://archives06.fr/ark:/79346/814985.2232060")[291 W 30]
]), mais sans le difficile prolongement vers Béasse puisque le hameau s'était entre-temps dépeuplé et qu'il sera tragiquement détruit par un incendie peu de temps après.

La construction de la route du cimetière a été faite sous l'impulsion de Jean-Marie Robini en 1978, faisant alors partie du conseil municipal. À cette occasion les arbres à droite en arrivant au cimetière ont été plantés. Le cyprès à gauche en montant la route, un peu avant d'arriver au château d'eau, a été planté ultérieurement par son épouse Emma Robini.\
Jean souhaitait faire continuer la route à partir du château d'eau jusqu'aux maisons de la Gleya, mais les propriétaires des terrains à traverser n'ont pas voulu les céder. Il y a dorénavant une antenne Bouygues Telecom à l'emplacement où aurait commencé cette route.

La piste des Maurins a été réalisée sous la municipalité Jean Thaon. Jean Robini, qui n'était alors plus au conseil, servit de médiateur pour négocier la cession des terrains nécessaires. Il fut d'ailleurs un des principaux contributeurs terriens. Des murs ont été construits sur cette même piste aux alentours de 2001.

== L'eau

L'accès à l'eau a longtemps été une difficulté majeure dans la vallée. Avant la fin du XIX#super[e] siècle, l'eau destinée aux bêtes, à l'arrosage et aux besoins domestiques était directement puisée au vallon, sans aucun point d'eau véritablement potable à proximité immédiate #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", portail _Vesubian_ (vesubian.com).]. En été, la seule ressource connue était une source au débit très faible située à plus de 600 mètres du hameau, contraignant souvent les familles à aller chercher l'eau stagnante du ruisseau des Oules à plus de 700 mètres par des sentiers qualifiés d'impraticables #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

Après une pétition des habitants en avril 1896 et une délibération municipale en juin 1899, le premier réseau public d'adduction fut installé vers 1900-1901 #footnote(link("https://archives06.fr/ark:/79346/1161889.2481744")[A.D.A.M. : E-dépôt 78 5 O 3 -- Hameaux de Camari et Saint-Colomban : pétition, délibérations, affiche d'adjudication, soumissions, rapport de l'ingénieur ordinaire, arrêté préfectoral, correspondance.]). Le captage alimentait une fontaine publique couplée à deux abreuvoirs-lavoirs et à un système de bassins conçu pour éviter le gaspillage, la gestion de l'eau restant cruciale lors des sécheresses estivales #footnote[Solenne Szys, "La vallée de St Colomban (Saint-Colomban, Gorblaou, Camari) - Territoire de Lantosque : Éléments d'histoire d'une communauté oubliée", _AMONT, Pays vésubien_, n° 1, 2000, p. 2.]. Les écarts de Gorblaou et de Camari obtinrent à leur tour leurs fontaines quelques années plus tard, par l'entremise du syndicat agricole #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

#figure(fit-image("/assets/lantosque-saint-colomban/eau_lavoir_coulet.jpg", width: 50%), caption: [
  Le lavoir du Coulet, à Saint-Colomban (Photo Christian LEVANIN)
])

En avril 1923, trente-cinq propriétaires du secteur créèrent l'Association Syndicale Libre de Saint-Colomban pour solliciter des subventions #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.]. C'est dans ce cadre que fut aménagé en 1925 le canal d'irrigation captant les eaux de la forêt de la Maïris pour arroser les cultures jusqu'au hameau #footnote(link("https://archives06.fr/ark:/79346/1161889.2481744")[A.D.A.M. : E-dépôt 78 5 O 8 -- Construction et entretien : pétition, rapports de l'ingénieur, arrêté préfectoral, délibérations, acte de création d'association syndicale, devis, plan, correspondance.]).

Quant à l'adduction d'eau potable directement dans les habitations, elle ne s'est faite que tardivement et de façon progressive, entre 1947 et 1966 #footnote["Saint Colomban de Lantosque - Mémoire ethnologie rurale", op. cit.].

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/eau_usine_camari.jpg", width: 100%), caption: [
    Usine de traitement de l'eau potable à Camari
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/eau_chateau_cimetiere.jpg", width: 56.5%), caption: [
    Château d'eau potable desservant le hameau, au cimetière
  ]),
)

Le vallon de Saint-Colomban dispose de plusieurs launes (dont la laune de l'Éléphant aux Oules et la laune du Diable aux Maurins) où il était autrefois possible de se baigner. La baignade est dorénavant interdite par arrêté municipal en date du 04/08/2020 #footnote(link("/assets/Lantosque - Arrete municipal 2020-08-04.pdf")[Arrêté municipal n°010/2020 portant interdiction de la baignade dans l'ensemble du cours d'eau sis dans le vallon de Camari - St Colomban jusqu'à la Vésubie]) dans l'entièreté du vallon.

#figure(fit-image("/assets/lantosque-saint-colomban/eau_laune_diable.jpg", width: 50%), caption: [
  La laune du diable aux Maurins, d'accès privé
])


== Les cafés et buvettes

Sur le chemin de la Gleya, dans la ruelle descendant à la place, on peut encore voir sur le haut d'une porte à droite en descendant l'enseigne d'un ancien café restaurant tenu par François et Philippine Thaon.

#side-by-side(
  figure(fit-image("/assets/lantosque-saint-colomban/st_col/chemin_de_la_gleya_ruelle.jpg", width: 100%), caption: [
    La ruelle descendant à la place
  ]),
  figure(fit-image("/assets/lantosque-saint-colomban/st_col/chemin_de_la_gleya_bar.jpg", width: 100%), caption: [
    L'enseigne du café restaurant de la place
  ]),
)

Une buvette était présente au quartier du Coulet dans la maison à droite de la placette.

#figure(fit-image("/assets/lantosque-saint-colomban/st_col/buvette_coulet.jpg", width: 60%), caption: [
  Photo d'avant le ravalement des façades qui a fait disparaître la mention de la buvette (\~1980)
])

== Le festin

Tous les étés, un festin est réalisé sur la place devant l'église.

#figure(
  caption: [Bons d'entrée pour le bal de septembre 1936],
  side-by-side(
    fit-image("/assets/lantosque-saint-colomban/st_col/festin_bons_1936_hommes.jpg"),
    fit-image("/assets/lantosque-saint-colomban/st_col/festin_bons_1936_femmes.jpg"),
  ),
)

Les rambardes autour de la place et le "balcon" pour les musiciens (ou plus récemment le D.J.) ont été réalisés par Joseph Macri et Jean Robini en 1991.

#figure(
  caption: [Discours durant le festin de Juillet 1991],
  fit-image("/assets/lantosque-saint-colomban/st_col/festin_juillet-1991.jpg"),
)

L'eau était fournie par les Robini, détenant la maison attenante à la place.

== La population

#let barres-empilees(
  data,
  series: ("Beasse", "St Colomban", "Raynaud", "Gorblaou", "Camari"),
  width: 15cm,
  height: 7cm,
  colors: (
    rgb("#496A81"), // bleu ardoise
    rgb("#C9825B"), // terre cuite
    rgb("#7A9273"), // vert sauge
    rgb("#9A7A91"), // prune grisé
    rgb("#B5A36A"), // ocre
  ),
) = {
  show: lq.show_(
    lq.tick-label.with(kind: "x"),
    rotate.with(-90deg, reflow: true),
  )
  show: lq.theme.skyline

  let annees = data.Année.map(int)
  let n = annees.len()
  let x = range(n)

  // Valeurs numériques, avec #N/A et cellules vides remplacés par 0.
  let ys = series.map(s => data
    .at(s)
    .map(elem => if elem == "#N/A" or elem == "" {
      0
    } else {
      int(elem)
    }))

  let plots = ()

  for i in range(series.len()) {
    let values = ys.at(i)

    // Base = somme des séries précédentes.
    let base = x.map(j => range(i).fold(
      0,
      (acc, k) => acc + ys.at(k).at(j),
    ))

    // y = sommet du segment = base + valeur courante.
    let top = x.map(j => base.at(j) + values.at(j))

    plots.push(
      lq.bar(
        x,
        top,
        base: base,
        width: 80%,
        fill: colors.at(i),
        stroke: white,
        label: series.at(i),
      ),
    )
  }

  lq.diagram(
    width: width,
    height: height,

    legend: (
      position: top + right,
      stroke: none,
      fill: none,
    ),

    xaxis: (
      subticks: none,
      ticks: annees.map(y => str(y)).enumerate(),
    ),

    ..plots,
  )
}


#let data = lq.load-txt(
  read("/assets/lantosque-saint-colomban/demographie.csv"),
  header: true,
  converters: it => it,
)

#figure(
  caption: [Évolution de la population de Saint-Colomban et de ses écarts],
  barres-empilees(data),
)

#figure(caption: [Population recensée à Saint-Colomban et dans ses écarts])[
  #let demographie = csv("/assets/lantosque-saint-colomban/demographie.csv")
  #let header-data = demographie.at(0)
  #let body-data = demographie.slice(1)

  #show table.cell: set text(size: .8em, hyphenate: false)
  #show table.cell: set par(justify: false)
  #show table.cell.where(y: 0): it => {
    set text(weight: "bold", size: 1.1em)
    context {
      if target() != "html" and it.x > 2 {
        align(center + horizon, rotate(-75deg, reflow: true, it))
      } else {
        it
      }
    }
  }

  #table(
    columns: (25%, 25%, 15%, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: horizon + center,
    table.header(..header-data),
    ..body-data.flatten(),
  )
]
