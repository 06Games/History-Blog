#import "/book.typ": book-page

#show: book-page.with(title: "Lantosque: Les notables")
#set text(lang: "fr")

= Les notables

== Les maires et syndics

#table(
  columns: (1fr, 1fr, auto, auto, 1fr),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: horizon,
  table.header(
    [*1#super[ère] Mention*], [*D#super[ère] Mention*], [*Prénom*], [*Nom*], [*Notes*]
  ),
	table.cell(colspan: 5, align: center, inset: 5pt)[Ancien régime (Syndics)],
	[1582 #footnote(link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/75"))], [], [Christophe], [Otto], [], 
	[], [], [], [], [], 
	[1586 #footnote(link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/259"))], [], [Pierre], [Thaon], [Probe],
	[1586 #footnote([En activité en 1586 (#link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/259")) et ancien syndic en 1602 (#link("https://archives06.fr/ark:/79346/1157984.2481979")[E-dépôt 78 FF 28])])], [], [Jean], [Doya], [Probe Maître],
	[], [], [], [], [], 
	table.cell(colspan: 5, align: center, inset: 5pt)[Période révolutionnaire (Présidents de l'administration communale)],
	[], [], [], [], [], 
	[30 nivose an VII \ (19 janvier 1799) #footnote(link("https://www.geneanet.org/registres/view/17456/26"))], [10 germinal an VII \ (30 mars 1799) #footnote(link("https://www.geneanet.org/registres/view/17456/30"))], [Louis], [Seren], [], 
	[30 prairial an VII \ (18 juin 1799) #footnote(link("https://www.geneanet.org/registres/view/17456/31"))], [10 ventôse an VIII \ (1 mars 1800) #footnote(link("https://www.geneanet.org/registres/view/17456/40"))], [Jean-André], [Olivari], [], 
	table.cell(colspan: 5, align: center, inset: 5pt)[Période révolutionnaire (Maires)],
	[28 vendémiaire an IX \ (20 octobre 1800) #footnote(link("https://www.geneanet.org/registres/view/17494/18"))], [04 germinal an X \ (25 mars 1802) #footnote(link("https://www.geneanet.org/registres/view/17494/111"))], [Joseph], [Léa], [Commissaire du gouvernement le 20 floréal an VIII (10 mai 1800) #footnote([Extrait du #link("http://amontcev.free.fr/lantosque-mariages.htm#_ftn4")[#underline[registre des délibérations du conseil municipal], A.D.A.M. E 078/01D001] : "L'an huitième de la République Française une et indivisible et le vingt de floréal à Lantosque Canton d'Utelle Département des Alpes-Maritimes : je soussigné Agent Municipal de ladite Commune Esprit Raibaut certifie et déclare qu'étant les autrichiens et une bande de Barbets entrés aujourd'hui dans ladite Commune se sont introduits dans ma propre maison d'habitation, dans celle du Commissaire du Gouvernement Joseph Lea ; et dans cette maison commune avec rupture et enfoncement des portes, et ont déchiré emporté et foullé aux pieds presque toutes les écritures et papiers de la même Commune et principalement les Registres de l'état Civil, de sorte que après leur départ aucun registre n'a été trouvé. En foi de quoi j'ai dressé le présent procès-verbal pour servir et valoir en ce que de raison et j'ai signé. Fait à la Maison Commune de Lantosque l'an et mois et an susdit".])], 
	[21 floréal an X (11 mai 1802) #footnote(link("https://www.geneanet.org/registres/view/17494/118"))], [02 août 1807 #footnote(link("https://www.geneanet.org/registres/view/17456/152"))], [Joseph François], [Auda], [Adjoint au maire au conseil municipal précédent], 
	[07 août 1807 #footnote(link("https://www.geneanet.org/registres/view/17416/240"))], [02 août 1810 #footnote(link("https://www.geneanet.org/registres/view/17494/414"))], [Jean-Baptiste], [Daideri], [], 
	[21 juillet 1811 #footnote(link("https://www.geneanet.org/registres/view/17494/457"))], [18 février 1814 #footnote(link("https://www.geneanet.org/registres/view/17456/276"))], [Jean-Baptiste], [Testoris], [Adjoint au maire au conseil municipal précédent],
	table.cell(colspan: 5, align: center, inset: 5pt)[Restauration sarde (Syndics)],
	[], [], [], [], []
)

#pagebreak()

=== Les élections municipales depuis 1860

#let elec_table(two_turns: false, ..args) = table(
	columns: if two_turns { (1fr, auto, auto) } else { (1fr, auto) },
	inset: (
		x: 5pt,
		y: 10pt,
	),
	align: if two_turns { (left, right, right) } else { (left, right) },
	if two_turns { table.header([*Nom*],[*1#super[er] tour*],[*2#super[nd] tour*]) }
	else { table.header([*Nom*],[*Voix obtenues*]) },
	..args
)
#let elec_maire(txt) = text(weight: "bold", txt)
#let elec_echec(txt) = context text(style: "italic", fill: text.fill.darken(25%), txt)

#let l1 = blue.darken(30%)
#let l2 = orange.darken(30%)

==== 1904

Deux listes concourraient aux élections municipales du 1er mai 1904 : l'une conduite par le maire sortant Louis Cristini, l'autre par Camille Thaon, secrétaire des enfants assistés à Nice, et Louis Borriglione, ancien maire.

Les résultats furent connus le landemain à 3 heures du matin.

La liste du maire sortant l'emporta largement et dans son intégralité.

#columns(2)[
#elec_table(
	text(fill: l1, elec_maire[Cristini Louis (maire sortant)]),text(fill: l1, elec_maire[428]),
	text(fill: l1)[Passeron Zéphirin],text(fill: l1)[426],
	text(fill: l1)[Thaon Joseph],text(fill: l1)[411],
	text(fill: l1)[Otto Joseph],text(fill: l1)[405],
	text(fill: l1)[Thaon Patuce],text(fill: l1)[403],
	text(fill: l1)[Dallo Ange],text(fill: l1)[397],
	text(fill: l1)[Brun Charles],text(fill: l1)[395],
	text(fill: l1)[Otto Joseph],text(fill: l1)[390]
)
#colbreak()
#elec_table(
	text(fill: l1)[Torrin Ambroise],text(fill: l1)[388],
	text(fill: l1)[Maurin Laurent],text(fill: l1)[381],
	text(fill: l1)[Corniglione Félix],text(fill: l1)[379],
	text(fill: l1)[Gaglio Joseph],text(fill: l1)[373],
	text(fill: l1)[Raybaudo Philippe],text(fill: l1)[370],
	text(fill: l1)[Bucelin Charles],text(fill: l1)[351],
	text(fill: l1)[Otho Louis],text(fill: l1)[344],
	text(fill: l1)[Borriglione Félix],text(fill: l1)[314],
	text(fill: l2, elec_echec[Thaon Camille]), text(fill: l2, elec_echec[172])
)
]

#figure(image(".assets/Elections 1904.jpg", width: 10cm), caption: [
	Extrait du #link("https://archives06.fr/ark:/79346/9588bee5c3c066c4461c95baead3eb72/dao/0/5")[Le Petit Niçois du 3 mai 1904, p.5]
])

==== 1908

==== 1912

==== 1919

L'élection opposait la liste d'Union Lantosquoise et la liste d'Action. La liste d'Union Lantosquoise l'emporta en totalité #footnote[#link("https://archives06.fr/ark:/79346/d13bce85aa66c30f62c1651d80201f78/dao/0/1")[Le Petit Niçois du 1 décembre 1919, p.1]].

#columns(2)[

#text(weight: "black")[Première Section]

Inscrits, 447. — Votants, 349. — Exprimés, 345 #footnote[#link("https://archives06.fr/ark:/79346/a9889828faed7b916625ebe4fdc05312/dao/0/2")[L'Eclaireur de Nice du 1 décembre 1919, p.2]].

#elec_table(
	text(fill: l1)[D#super[r] Passeron Charles],text(fill: l1)[333],
	text(fill: l1)[Thaon Camille],text(fill: l1)[260],
	text(fill: l1)[Dragon Baptistin],text(fill: l1)[275],
	text(fill: l1)[Raybaud Philippe],text(fill: l1)[274 ou 275],
	text(fill: l1)[Otto-Bruc Philippe],text(fill: l1)[224],
	text(fill: l1)[Bellet Paulin],text(fill: l1)[240],
	text(fill: l1)[Adréani Etienne],text(fill: l1)[306],
	text(fill: l1)[Brandina Henri],text(fill: l1)[245],
	text(fill: l1)[Otho Joseph],text(fill: l1)[315],
	text(fill: l1)[Nicolas Félix],text(fill: l1)[252],
	text(fill: l1)[Soleri Jérôme],text(fill: l1)[321],
	text(fill: l1)[Thaon Louis],text(fill: l1)[326],
)

#colbreak()

#text(weight: "black")[Deuxième Section : Pélasque]

Sans info

#elec_table(
	text(fill: l1)[Dragon Joseph],text(fill: l1)[68],
	text(fill: l1)[Léa Ambroise],text(fill: l1)[55],
	text(fill: l1)[Cristini Paul],text(fill: l1)[54],
	text(fill: l1)[Auda Victor],text(fill: l1)[71]
)
]

Le conseil municipal s'est réuni le 07 décembre 1919 : Camille Thaon fut élu maire, Baptistin Dragon adjoint et Ambroise Léa adjoint spécial de la section de Pélasque #footnote[#link("https://archives06.fr/ark:/79346/e03434d6f19c2bf89383c78f650a7087/dao/0/1")[Le Petit Niçois du 08 décembre 1919, p.1]].

==== 1925

Résultats de l'élection du conseil municipal qui s'est tenue le 3 mai 1925 #footnote[#link("https://archives06.fr/ark:/79346/c824303f13a29314d45d3f40ac4e919c/dao/0/5")[Petit Niçois du 5 mai 1925, p.5]] :

#columns(2)[

#text(weight: "black")[Première Section]

Inscrits, 427. — Votants, 336 

#elec_table(
	[D#super[r] Passeron Charles],[291],
	[Adréani Etienne],[260],
	[Dragon Baptistin],[255],
	[Nicolao Félix],[256],
	[Otho Joseph (feu Ange)],[263],
	[Otto-Bruc Philippe],[194],
	[Soleri Jérôme],[284],
	[Thaon Louis-Joseph],[291],
	[Borriglione François],[286],
	[Cristini Antoine],[277],
	[Otto Marius],[243],
	[Torrin Constantin],[243],
	[Martel Jean #footnote[
		Avait été omis dans la liste publiée le 5 mai 1925 par le Petit Niçois.
		#link("https://archives06.fr/ark:/79346/fe5e027610a9272f8cc16795d8b3719d/dao/0/5")[Petit Niçois du 7 mai 1925, p.5]
	]],[186],
)

#colbreak()

#text(weight: "black")[Deuxième Section : Pélasque]

Inscrits, 119. — Votants, 102

#elec_table(
	text(fill: l1)[Baille Adolphe],text(fill: l1)[67],
	text(fill: l1)[Auda Victor-Joseph],text(fill: l1)[61],
	text(fill: l1)[Steve César],text(fill: l1)[67],

	text(fill: l2, elec_echec[Auda Thomas (hôtelier)]), text(fill: l2, elec_echec[38]),
	text(fill: l2, elec_echec[Cinciarini Victor]), text(fill: l2, elec_echec[34]),
	text(fill: l2, elec_echec[Thaon Zacharie]), text(fill: l2, elec_echec[13]),
)
]

Le 17 mai à 9 heures du matin, le conseil municipal s'est réuni pour l'élection du maire et des adjoints #footnote[#link("https://archives06.fr/ark:/79346/f342fed905a585d71c0f1fac8c56f5f7/dao/0/5")[Le Petit Niçois du 18 mai 1925, p.5]].
#linebreak()
Le docteur Charles Passeron fut élu maire avec 13 voix, Baptistin Dragon est réélu adjoint avec 11 voix et Victor-Joseph Auda est élu adjoint spécial de Pélasque avec 14 voix.



La réélection de Baptistin Dragon fit cracher de l'encre. Le 24 mai, le Petit Niçois #footnote[#link("https://archives06.fr/ark:/79346/49fead193b08c17329d700ab3c8e0f8f/dao/0/5")[Petit Niçois du 24 mai 1925, p.5]] publiait une lettre ouverte :

#block[
	"Lors de la dernière campagne électorale, sentant souffler le vent de la défaite, 
	M. Baptistin Dragon a accordé son piston et a joué un air d'union avec des accents si malheureux que ses trop bons adversaires, 
	croyant en sa sincérité, lui ont tendu charitablement la main, après avoir obtenu sa parole d'honneur 
	(et ceci devant les membres du Cercle de l'Union Lantosquoise) qu'il laisserait le poste d'adjoint 
	à notre sympathique ami Antoine Crisitini, que toute l'opinion désignait.
	Faut'il croire que l'intérêt privé est si puissant qu'il oblige un homme à renier sa parole. 
	Que les électeurs se documentent et qu'ils sachent combien nos conseillers municipaux ont été bernés... 
	et que ceux dont on parlait de démission reviennent sur la décision afin d'empecher la réussite de cette habile mais déloyale manoeuvre."
]



==== 1929

#columns(2)[

#text(weight: "black")[Première Section]

Premier tour : Inscrits, 469. — Votants, 396

Second tour #footnote[#link("https://archives06.fr/ark:/79346/3dc27d5e26d85d37e1be5908b10fb60d/dao/0/2")[L'Eclaireur de Nice du 13 mai 1929, p.2]] : Votants, 361 — Exprimés, 358

#elec_table(two_turns: true,
	text(fill: l1)[Passeron Charles],text(fill: l1)[272],text(fill: l1)[],
	text(fill: l1)[Cristini Antoine],text(fill: l1)[250],text(fill: l1)[],
	text(fill: l1)[Adréani Etienne],text(fill: l1)[206],text(fill: l1)[],
	text(fill: l1)[Nicolao Félix],text(fill: l1)[ball.],text(fill: l1)[208],
	text(fill: l1)[Otto Marius],text(fill: l1)[203],text(fill: l1)[],
	text(fill: l1)[Bellomini Albert],text(fill: l1)[ball.],text(fill: l1)[N.C.],
	text(fill: l1)[Borriglione Robert],text(fill: l1)[ball.],text(fill: l1)[232],
	text(fill: l1)[Gechelle Célestin],text(fill: l1)[ball.],text(fill: l1)[198],
	text(fill: l1)[Marsala Joseph],text(fill: l1)[203],text(fill: l1)[],
	text(fill: l1)[Otto-Bruc Ange],text(fill: l1)[210],text(fill: l1)[],
	text(fill: l1)[Robini Louis],text(fill: l1)[215],text(fill: l1)[],
	text(fill: l1)[Thaon Casimir],text(fill: l1)[210],text(fill: l1)[],
	text(fill: l1)[Gaglio Isidore],text(fill: l1)[202],text(fill: l1)[],
	text(fill: l2)[Dragon Baptistin],text(fill: l2)[235],text(fill: l1)[],
)

#colbreak()

#text(weight: "black")[Deuxième Section : Pélasque]

Premier tour : Inscrits, 95. — Votants, 95

Second tour : non organisé

#elec_table(
	[Baille Adolphe],[64],
	[Auda Thomas],[58],
	[Auda Victor-Joseph],[58]
)
]

#columns(2)[
#figure(image(".assets/Elections 1929 - Lantosque.jpg", width: 10cm), caption: [
	Extrait du #link("https://archives06.fr/ark:/79346/cada6c54d73a8f2270ce47ad7b9c6471/dao/0/2")[Petit Niçois du 6 mai 1929, p.2]
])
#colbreak()
#figure(image(".assets/Elections 1929 - Pelasque.jpg", width: 10cm), caption: [
	Extrait du #link("https://archives06.fr/ark:/79346/cada6c54d73a8f2270ce47ad7b9c6471/dao/0/2")[Petit Niçois du 6 mai 1929, p.2]
])
]

Le docteur Charles Passeron fut réélu maire, le premier adjoint fut Antoine Cristini, le second adjoint, Etienne Adréani et l'adjoint spécial de Pélasque, Adolphe Baille #footnote[#link("https://archives06.fr/ark:/79346/240a487b07ebe0b42edd26f6a5a692be/dao/0/5")[Le Petit Niçois du 20 mai 1929, p.5]].

#pagebreak()

== Les curés

#table(
  columns: (auto, auto, 1fr, 1fr, 1fr),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: horizon,
  table.header(
    [*1#super[ère] Mention*], [*D#super[ère] Mention*], [*Prénom*], [*Nom*], [*Notes*]
  ),

	[03 février 1635 #footnote(link("https://www.geneanet.org/registres/view/17454/2"))], [30 septembre 1675 #footnote(link("https://www.geneanet.org/registres/view/17413/163"))], [Louis], [Auda], [], 
	[29 septembre 1675 #footnote(link("https://www.geneanet.org/registres/view/17454/76"))], [14 janvier 1685 #footnote(link("https://www.geneanet.org/registres/view/17414/12"))], [Etienne], [Thaon], [], 
	[21 janvier 1677 #footnote(link("https://www.geneanet.org/registres/view/17413/166"))], [04 octobre 1677 #footnote(link("https://www.geneanet.org/registres/view/17413/168"))], [Jean Jacques], [Figheria], [], 
	[01 mars 1677 #footnote(link("https://www.geneanet.org/registres/view/17454/78"))], [30 avril 1685 #footnote(link("https://www.geneanet.org/registres/view/17414/12"))], [Camille], [Thaon], [], 
	[06 mai 1685 #footnote(link("https://www.geneanet.org/registres/view/17414/13"))], [02 août 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/54"))], [Jean Baptiste], [Millo], [], 
	[10 août 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/54"))], [02 octobre 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/55"))], [Jules], [Dallò], [], 
	[11 août 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/55"))], [24 septembre 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/55"))], [Camille], [Thaon], [], 
	[17 octobre 1706 #footnote(link("https://www.geneanet.org/registres/view/17414/55"))], [23 octobre 1713 #footnote(link("https://www.geneanet.org/registres/view/17414/68"))], [Joseph], [Buffon], [], 
	[04 novembre 1713 #footnote(link("https://www.geneanet.org/registres/view/17414/69"))], [], [Jean Baptiste], [Seren], [], 
	[15 novembre 1713 #footnote(link("https://www.geneanet.org/registres/view/17414/69"))], [], [Antoine François], [Thaon], [],
	[], [], [], [], []
	)

#pagebreak()

== Les notaires

#table(
  columns: (1fr, 1fr, 1.5fr, 2fr, 2fr, 3fr),
  inset: (
    x: 5pt,
    y: 10pt,
  ),
  align: horizon,
  table.header(
    [*1#super[ère] Ment°*], [*D#super[ère] Ment°*], [*Prénom*], [*Nom*], [*Filiation*], [*Notes*]
  ),
  [1579], [1588], [Jean \ Antoine], [Auda], [], [Un chiffre "2" est écrit sur la couverture, cela signifie t-il qu'il s'agit du 2#super[nd] protocole ?],
	[1582 #footnote(link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/75")[3E 113/1 f.74])], [1619], [Philippe], [Thaon], [fils de Paul], [],
	[1583 #footnote(link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/141")[3E 113/1 f.139])], [], [Honoré], [Thaon], [], [],
	[1584 #footnote(link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/159")[3E 113/1 f.158])], [], [Pierre], [Martel], [], [],
	[], [1586 #footnote([Dans son testament #link("https://archives06.fr/ark:/79346/765900.2436491/dao/0/249")[3E 113/1 f.280]])], [Antoine], [Lanti], [], [],
	[1610], [1626], [Jean], [Auda], [fils du \ susnommé \ Jean-Antoine], [Le protocole de 1610 est présenté comme étant le 3#super[ème]],
	[1626], [], [André], [Thaon], [], [],
	[1673], [1703], [Pierre], [Malaussena], [], [],
	[1680], [1697], [André], [Fighiera], [], [],
	[1713], [1757], [Charles \ Antoine], [Daloni], [], [],
	[], [> 1747], [Antoine \ François], [Oddo], [], [],
	[1738], [1783], [Joseph], [Buffonio], [], [],
	[1760], [1772], [Pierre \ Thomas], [Daloni], [], [],
	[1767], [1776], [Pierre \ Philippe], [Fighiera], [], [],
	[1777], [1800], [Barthélémy], [Passeroni], [], [],
	[1785], [1794], [Alexandre], [Boetto], [], []
)

#pagebreak()

== Les médecins et chirurgiens

#table(
	columns: (1fr, 1fr, 1fr, 1fr, 1fr),
	inset: (
		x: 5pt,
		y: 10pt,
	),
	align: horizon,
	table.header(
		[*1#super[ère] Mention*], [*D#super[ère] Mention*], [*Prénom*], [*Nom*], [*Notes*]
	),
	[], [], [], [], []
)

#pagebreak()

== Les capitaines

#table(
	columns: (1fr, 1fr, 1.5fr, 2fr, 5fr),
	inset: (
		x: 5pt,
		y: 10pt,
	),
	align: horizon,
	table.header(
		[*1#super[ère] Ment°*], [*D#super[ère] Ment°*], [*Prénom*], [*Nom*], [*Notes*]
	),
	[° #sym.tilde.basic 1530], [† 1623], [Philippe], [Thaon], [Capitaine des milices de Lantosque et Belvédère \ Anobli par lettres patentes du duc Charles Emmanuel I#super[er] de Savoie le 16 janvier 1617 \ Père du S#super[gr] Pierre Thaon de Saint-André, dont descend la lignée des Thaon de Revel],
	[1665], [], [Jules César], [Auda], [Fils du notaire Jean Auda ?],
	[1668], [1675], [Joseph \ François], [Buffonio], [],
)
