import 'package:eglise_saint_martin_le_beau/models/church_word_entry.dart';

//
// Pour extraire les définitions des mots expliqués dans le texte et les formater selon la structure Dart donnée, nous devons d'abord identifier chaque mot défini dans le texte et sa définition correspondante.
//
// Le texte donné est une sorte de glossaire architectural. Chaque terme est généralement suivi de deux-points (:) et sa définition suit. Nous allons parcourir le texte pour extraire chaque terme et sa définition.
//
// Voici le plan :
// 1. Parcourir le texte pour identifier chaque terme, généralement en gras ou suivi de deux-points.
// 2. Extraire la définition qui suit chaque terme, généralement jusqu'au prochain terme ou jusqu'à la fin de la section.
// 3. Créer une liste d'objets ChurchWordEntry, chaque objet contenant un mot et sa définition.
//
// Commençons par extraire les termes et leurs définitions :
//
// 1. Abaque : Tablette formant la partie supérieure d'un chapiteau ou d'une colonne.
// 2. Abbatiale : église principale d'une abbaye
// 3. Abbaye : Monastère d'hommes ou de femmes qui est dirigé par un abbé ou une abbesse. Etablissement monastique où vivent des moines.
// 4. Abside : Partie demi-circulaire d'une église, derrière l'autel. Durant le Haut Moyen Age, le clergé se range dans l'abside de la cathédrale et le siège de l'évêque y est disposé.
// 5. Ajour : Ils peuvent être de différentes formes suivant le style, l'époque et leur emplacement dans la composition ; exemple : le trèfle (trilobe), le quatre-feuilles (quadrilobe), la mouchette (ou goutte d'eau), le soufflet, les polylobes (à partir de cinq lobes), l'écoinçon. La « rose» ou « rosace» constitue une ouverture circulaire de plus de 50 cm, souvent située au-dessus des portails, elle peut comporter un réseau. L'oculus est le jour circulaire situé au centre de la rosace.
// 6. Allège : Pan de mur situé sous une fenêtre.
// 7. Amortissement : Élément ornemental placé au sommet de tout axe vertical d'une élévation (pinacle, statue, etc.).
// 8. Antéfise : Ornement, souvent en terre cuite ou en pierre, décorant le bord des toits.
// 9. Appareil : Technique, de pose, la taille et le type de pierres utilisés pour la construction d'un mur (petit appareil : pierres carrées de petite taille ; grand appareil : pierres rectangulaires de grande taille ; appareil irrégulier : pierres de forme et de taille différentes). L'appareil mixte, brique et pierre, déjà en usage au 15e siècle pour la construction des châteaux, deviendra fréquent au 16e siècle ; il permettra une multitude de combinaisons concourant ainsi à la diversité des édifices.
// 10. Arc (brisé, de décharge) : assemblage de pierres ou claveaux, formé de deux segments de cercle prenant appui, aux extrémités, sur des murs verticaux, les piédroits, et bloqués, au milieu, par une clef. L'arc coiffe une ouverture, porte, fenêtre, arcade, arcature, ou bien s'inscrit à l'intérieur d'un mur (voir arc de décharge).
// 11. Arc brisé : Arc aigu formé de deux segments de cercle qui se coupent.
// 12. Arc de décharge : arc disposé au-dessus d'un linteau ou d'une arcature afin de reporter la charge de la maçonnerie supérieure sur des points d'appui solides.
// 13. Arc en accolade : formé d'une succession de quatre courbes, convexes et concaves, est typique du gothique flamboyant civil (14e et 15e siècles).
// 14. Arc en anse de panier : arc surbaissé en demi-ellipse.
// 15. Arc en plein cintre : Courbure intérieure d'une voûte, d'une arcade, d'un arc, composé d'une moitié de cercle.
// 16. Arc formeret : arc perpendiculaire à l'axe de la nef qui double de loin en loin la voûte et en renforce la solidité.
// 17. Arc ogif ou ogive : arc diagonal de renfort, unissant les arcs doubleaux et les arcs formerets en passant par la clef de voûte.
// 18. Arc outrepassé, dit aussi en fer à cheval : arc dont les extrémités dépassent la demi-circonférence.
// 19. Arc surbaissé : a son centre géométrique en dessous de la ligne de naissance de l'arc.
// 20. Arcade aveugle : Ouverture pratiquée sous un arc dans un mur. Elle est aveugle quand elle ne perce pas toute l'épaisseur du mur dans lequel elle est construite.
// 21. Arcature : Suite de petites baies libres couvertes d'un arc.
// 22. Arc-boutant : Arc extérieur à l'édifice, accolé à un mur pour transférer la poussée d'une voûte vers une pile de pierre appelée culée.
// 23. Archivolte : Moulure, décoration supérieure sur un arc de portail ou sur une simple baie.
// 24. Arcs trilobés, quadrilobés... (voir redent).
// 25. Armarium : excavation ménagée dans l'épaisseur d'un mur pour renfermer linge, objets divers ou pour servir de bibliothèque.
// 26. Arrachement : Pierres saillant d'un mur, témoignant d'une destruction ou d'une volonté de reprise de maçonnerie.
// 27. Astragale : Moulure située à la jonction du fût et du chapiteau d'une colonne.
// 28. Baie : Ouverture fermée ou non d'une façade (arcade, fenêtre, porte). Une baie doit être divisée en plusieurs panneaux si sa surface excède 1 m². La division d'une baie de vitrail est rendue possible par l'utilisation des barlotières. Les barlotières supportent chaque panneau. Chaque panneau est maintenu entre deux barlotières (ou scellé dans la feuillure sur certains bords). Chaque panneau qui excède environ 40 cm de côté doit être consolidé par des vergettes.
// 29. Baies géminées : Fenêtres séparées en deux par une colonne.
// 30. Balcon : Étroite plate-forme à garde-corps, en surplomb devant une ou plusieurs baies. Le balcon est généralement extérieur.
// 31. Baldaquin : dais soutenu par des colonnes (ou suspendu), au-dessus d'un autel, d'un trône ou d'une porte d'entrée.
// 32. Balustrade : rangée de balustres (colonnettes moulurées) assemblées par une tablette, pour former un garde-corps.
// 33. Bardeaux : Planche de bois mince et allongée servant à couvrir les toitures sur le mode du recouvrement.
// 34. Barlong : De plan rectangulaire.
// 35. Bas-côtés : (du latin bassus, bas et costatum, partie du corps où sont les côtes) : nefs latérales d'une église, de hauteur le plus souvent moindre que la nef principale. Ils sont généralement au nombre de deux, mais parfois quatre ou même plus. Synonyme : collatéraux.
// 36. Base d'une colonne : Partie inférieure d'un objet sur laquelle il repose, assise.
// 37. Bas-relief : sculpture en faible saillie sur un fond.
// 38. Bassière : Petite pièce voûtée servant d'évier et à entreposer des aliments au frais.
// 39. Bâtière : Se dit d'un toit à deux pentes.
// 40. Billettes : Ornement composé de petits tronçons de moulures régulièrement espacés et alternés. Décor fréquent sur les archivoltes des portails romans.
// 41. Blocage : Mélange grossier de cailloux et de mortier remplissant l'intervalle entre les deux parements d'un mur.
// 42. Bossage : Parement de pierre formant une bosse plus ou moins saillante par rapport à ses arêtes.
// 43. Candiabre : motif ornemental et vertical, très courant au XVIe siècle, composé de vases superposés d'où sortent des branches stylisées et symétriques, animées parfois d'animaux fantastiques.
// 44. Cartouche : ornement architectural évoquant une feuille de papier partiellement déroulée, servant d'encadrement à une inscription ou des armoiries.
// 45. Cathédrale : Église principale du diocèse où se trouve le siège (cathedra) de l'évêque.
// 46. Chambranle : Encadrement d'une porte, d'une fenêtre, d'une cheminée.
// 47. Chancel : Clôture entre le chœur et la nef.
// 48. Chapelle castrale : Chapelle attachée à un château ou manoir, destinée à la famille du seigneur.
// 49. Chapelles rayonnantes : petits espaces construits autour du chevet, et parfois autour des transepts, dans lesquels les moines prêtres pouvaient célébrer les offices religieux.
// 50. Chapiteau : (du latin caput, tête) : pierre taillée souvent sculptée surmontant une colonne, un pilastre ou un pilier qui s'évase pour soutenir la retombée des arcs. Élément décoré de moulures et d'ornements divers qui coiffe le fût d'une colonne ou d'un pilier. Le chapiteau est essentiellement formé d'un corps (échine ou corbeille) et d'un couronnement (abaque ou tailleir). Dans l'architecture médiévale, l'astragale fait souvent partie du chapiteau.
// 51. Charpente : Assemblage de pièces de bois, de métal etc. constituant ou soutenant les diverses parties d'une construction.
// 52. Chemin de ronde : Coursière régnant intérieurement au sommet d'une enceinte, bordée par un parapet.
// 53. Cheminée : Foyer rond central dans la cuisine jusqu'au 12ème siècle. Elle est adossée au mur à partir du 12ème siècle.
// 54. Chemise : Muraille enveloppant une tour ou quelque édifice fortifié.
// 55. Chéneau : conduit placé à la base d'un toit, pour recevoir les eaux de pluie.
// 56. Chevet : Partie postérieure, externe, du chœur d'une église.
// 57. Chevrons : Longues pièces de bois reposant sur les pannes d'une charpente dans le sens de la pente du toit et recevant le lattis ou la volige de couverture.
// 58. Chœur : (du grec choros, chant) : partie de l'église réservée au clergé et aux chantres. Au sens strict on distingue le sanctuaire, partie de l'église où se trouve le maître autel et où évoluent les ministres de la messe, et le chœur, situé en avant ou en arrière, muni de stalles de chaque côté, et où se chante l'office des heures.
// 59. Cimaises : moulure qui forme la partie supérieure d'une corniche.
// 60. Claustra : Fermeture des baies faite d'une dalle de pierre ajourée.
// 61. Claveau : Pierre taillée en forme de coin qui entre dans la composition d'un arc ou d'une voûte.
// 62. Clef : Claveau central qui bloque les autres pierres dans la position voulue.
// 63. Clef de voûte : Pierre placée à l'intersection des nervures qui soutiennent une voûte.
// 64. Clocher : Ouvrage : tour, mur percé de baies, campanile, etc., destiné à recevoir les cloches.
// 65. Clocher-mur : Clocher composé d'un seul mur pignon avec ouvertures ou baies pour les cloches. On parle aussi de clocher peigne.
// 66. Clocher-peigne : Clocher ayant des cloches placées en file en haut d'un mur.
// 67. Clocher-porche : Clocher ayant à sa base un ou plusieurs porches.
// 68. Clocher-tour : Clocher composé d'une tour abritant les cloches.
// 69. Clocheton : Amortissement en forme de petit clocher.
// 70. Cloître : (du latin claustrum, fermé) : partie d'un monastère formé de quatre galeries couvertes, entourant une cour ou un jardin. Elle est destinée à la promenade et à la médiation des religieux.
// 71. Colombage : Construction en pan de bois dont les vides sont remplis par une maçonnerie légère.
// 72. Colonne engagée : Support d'un arc généralement circulaire engagé dans le mur d'une église.
// 73. Colonne torse : colonne à fût contourné en spirale.
// 74. Colonette : Colonne petite ou mince.
// 75. Console : ensemble formé d'une ou de plusieurs assises en pierre ancrées dans la maçonnerie et disposées en ressaut les unes sur les autres afin de porter les échauguettes, bretéches et mâchicoulis en encorbellement, le plus en avant possible de la paroi. A l'époque classique, les consoles peuvent supporter un balcon.
// 76. Contrefort : Pilier ou mur servant d'appui et de renfort à un autre mur.
// 77. Corbeau : Pierre, pièce de bois ou de métal, de section verticale carrée ou rectangulaire, partiellement engagée dans un mur et portant une charge par sa partie saillante.
// 78. Corniche : moulure, à la rencontre du toit et du mur, couronnant, en surplomb, une façade.
// 79. Coupoles : Voûtes hémisphériques élevées sur un plan circulaire, carré, hexagonal, octogonal ou elliptique.
// 80. Coussiège - Banc de pierre dans l'embrasure d'une fenêtre.
// 81. Coyau : Petit chevron prolongeant une toiture au-delà de la partie extérieure du mur, relevant la bordure du toit et destiné à éloigner du mur l'écoulement des eaux de pluie.
// 82. Crochet : élément décoratif en forme de crosse végétale ou de bourgeon recourbé, employé dans l'art gothique.
// 83. Croisée d'ogives : croisement de deux arcs, les ogives, qui servent d'armature à une voûte gothique remplie par un matériau de faible épaisseur et qui allègent la structure en reportant les forces sur les supports et non plus sur les murs.
// 84. Croix de chemin : Croix monumentale érigée en bordure d'une voie ou à un carrefour.
// 85. Croix pattée : Croix dont les extrémités s'évasent.
// 86. Crypte : Chapelle, généralement souterraine, d'une église, où l'on plaçait le corps ou les reliques des martyrs, des saints.
// 87. Cul de four : Voûte formée d'une demi-coupole ou quart de sphère.
// 88. Cul de lampe : Pierre saillante qui sert à supporter une base de colonne, la retombée d'un arc, des nervures de voûte, une statue.
// 89. Culée : massif de maçonnerie qui arc-boute la poussée de la première et de la dernière arche d'un pont ou d'un arc.
// 90. Culot : Sert à supporter une base de colonne la retombée d'un arc ou les nervures d'une voûte.
// 91. Dallage : Sol dallé, pavement.
// 92. Déambulatoire : Galerie entourant le chœur et reliant les bas-côtés.
// 93. Demi-croisée : Petite baie à une traverse de pierre.
// 94. Dôme : l'enveloppe extérieure d'une coupole.
// 95. Dormant : Ensemble des éléments et des parties fixes en menuiserie, rapportés dans l'embrasure d'une baie pour porter les parties mobiles de la fermeture.
// 96. Dosseret : Support rectangulaire dans lequel est engagée une colonne servant de départ à un arc-doubleau.
// 97. Doubleau : Renfort en maçonnerie destiné à doubler la solidité d'une voûte.
// 98. Écrasement : Disposition biaise par rapport au mur des parois latérales d'une baie.
// 99. Église : Bâtiment consacré au culte chrétien où l'on célèbre la messe.
// 100. Embrasure : Espace triangulaire libéré dans le mur pour l'aménagement une porte ou une fenêtre.
// 101. Encorbellement : Élément en saillie sur un mur et supporté par des poutres, des corbeaux ou des consoles.
// 102. Enfeu : Niche aménagée dans les parois intérieures ou extérieures de l'église pour abriter un tombeau ou un sarcophage.
// 103. Engoulant : Extrémité sculptée en forme de gueule.
// 104. Épi de faîtage : Ornement de forme pointue au sommet du toit, en céramique ou en métal.
// 105. Faîtage : Pièce maîtresse de charpente reliant horizontalement l'angle supérieur des fermes et sur laquelle s'appuient les chevrons.
// 106. Feuillure : Saillie pratiquée dans l'embrasure d'une baie pour recevoir les bords d'un vantail.
// 107. Fleurdelisé : Parsemé de fleurs de lis.
// 108. Fleuron : ornement en forme de fleur stylisée qui termine les gâbles et les pinacles.
// 109. Formeret : Arc latéral d'un compartiment voûté inséré dans un mur.
// 110. Fresque : Peinture murale exécutée, à l'aide de couleurs délayées à l'eau, sur une couche de mortier frais à laquelle ces couleurs s'incorporent.
// 111. Fronton : ornementation triangulaire empruntée à l'antiquité grecque, couronnant un édifice, une porte ou une fenêtre et dont l'intérieur peut être sculpté. A partir de la Renaissance, il prend des formes variées : en arc de cercle creusé d'une coquille, à pans, brisé...
// 112. Fût : Corps d'une colonne, habituellement cylindrique.
// 113. Gâble : dans l'art gothique, élément décoratif en forme de fronton triangulaire très étiré vers le haut, parfois ajouré, surmontant et encadrant l'arc d'une baie.
// 114. Gargouille : Conduit d'évacuation des eaux, percé dans une corniche et généralement orné d'un mascaron ou d'un mufle.
// 115. Géminée (baie) : Divisée en deux généralement par une colonnette.
// 116. Gothique : terme inventé, par mépris, par la Renaissance pour désigner un art qui n'était pas inspiré de l'antique. Il sert maintenant à désigner la période s'étendant de la fin du 12e siècle à la fin du 15e siècle. L'architecture gothique est caractérisée par l'élan en hauteur, favorisé par l'invention de la croisée d'ogives. En France, on distingue trois périodes : le gothique primitif, à la fin du 12e siècle avec arcs brisés, fenêtres hautes et plus nombreuses et début des arcs-boutants ; le gothique rayonnant, au 13e siècle qui est la période d'épanouissement avec le développement des vitraux ; le gothique flamboyant, aux 14e et 15e siècles, où les formes animées comme des flammes, d'où le nom, jouent des courbes et des contre-courbes.
// 117. Grille : Clôture métallique plus ou moins ouvragée.
// 118. Grotesque : superposition de petits motifs, inspirés des Romains et formés d'entrelacs de feuillages, d'animaux chimériques ou de personnages caricaturés, paraissant suspendus par une cordelette invisible.
// 119. Haut-relief : Sculpture aux reliefs très accusés sans qu'ils se détachent du fond.
// 120. Imposte : Corps de moulures couronnant un piédroit ou un support vertical sans chapiteau et recevant la retombée d'un arc.
// 121. Intaille : Pierre dure et fine gravée en creux pour servir de sceau.
// 122. Intrados : Surface intérieure d'un arc.
// 123. Jouée : parement latéral d'une baie, cloison latérale d'une stalle de chœur.
// 124. Jour : Petite baie, généralement sans fermeture, donnant de la lumière ou ayant un rôle décoratif.
// 125. Jubé : Tribune transversale en forme de galerie, élevée entre la nef et le chœur dans certaines églises.
// 126. Lancette : Ce sont les jours situés entre les meneaux, elles sont elles-mêmes divisées par les barlotières qui permettent la pose des vitraux. Dans le gothique flamboyant, arc en tiers-point surhaussé (voir arc), en forme de fer de lance, surmontant en particulier les divisions verticales d'une baie.
// 127. Lanternon : Petite construction de plan centré et de forme élancée, percée de fenêtres et placée au faîte d'un toit.
// 128. Larmier : Sorte de bandeau ou de corniche servant à empêcher les eaux de pluie de couler le long du mur.
// 129. Lierne : Sur une voûte à croisée d'ogives, nervure secondaire qui part de la clef en soulignant le faîte de la voûte ou le voûtain.
// 130. Linteau : Pierre disposée à l'horizontale au-dessus d'une baie.
// 131. Lobe : Segment de cercle découpé dans un arc, découpure d'un arc en segment de cercle.
// 132. Mandorle : Gloire ovale en forme d'amande.
// 133. Marque de tâcheron : Signe gravé sur la pierre par le tailleur de pierre, il s'agit de la signature du travail réalisé par le tailleur.
// 134. Mascaron : Masque sculpté de fantaisie pouvant décorer la clef de l'arc ou de la plate-bande d'une baie, l'orifice d'une fontaine, etc.
// 135. Mausolée : Tombeau fastueux de grandes dimensions.
// 136. Médaillon : petit bas-relief circulaire représentant une effigie.
// 137. Meneau : montants et traverses, le plus souvent en pierre, qui partagent l'ouverture d'une fenêtre en plusieurs compartiments.
// 138. Méplat : Sculpture d'un relief uni et peu marqué.
// 139. Merlon : Partie pleine d'un rempart entre deux créneaux.
// 140. Métope : Intervalle entre les modillons d'une corniche (abside d'église romane).
// 141. Modillons : Corbeaux ornés soutenant une corniche d'une abside de type roman. Ils représentant souvent des figures humaines licencieuses grimaçantes en alternance avec des animaux ou monstres du bestiaire roman, symboles du combat perpétuel entre le Bien et le Mal.
// 142. Moellon : Pierre, non taillée ou grossièrement taillée, de petites dimensions.
// 143. Mortier : Mélange de chaux, de sable et d'eau qui sert à lier les pierres.
// 144. Mouchette : découpe en forme de flamme qui apparaît dans le réseau des fenêtres, des balustrades, de style flamboyant et s'y combine avec le soufflet (quadrilobe).
// 145. Mur de refend : Mur porteur d'un bâtiment formant une division intérieure.
// 146. Mur pignon : Mur terminé en triangle suivant la pente d'un comble.
// 147. Mur-boutant ou Contrefort : bloc de maçonnerie élevé à l'extérieur d'un mur pour l'épauler ou le renforcer.
// 148. Nef : (du latin navis, bateau) : partie centrale de l'église s'ouvrant sur le chœur. Les églises sont à une ou plusieurs nefs. A côté de la nef centrale, les nefs latérales se nomment collatéraux ou bas-côtés. La nef transversale est appelée transept. Partie de l'église où se tiennent les fidèles, qui va du transept à la façade principale et qui peut comporter 2 ou 4 bas-côtés.
// 149. Nervure : Grosse moulure d'une voûte, en particulier d'une voûte gothique. Les nervures sont, en général, la partie visible des arcs constituant l'ossature de cette voûte.
// 150. Niche : Renfoncement dans l'épaisseur d'un mur, théoriquement destiné à recevoir un élément décoratif, et son encadrement.
// 151. Oculus : Petite ouverture de forme circulaire ou proche du cercle, munie ou non d'un panneau vitré.
// 152. Ogive : (du latin obviare, rencontrer) : nervures diagonales placées sous les arêtes d'une voûte gothique. Leur croisement forme la croisée d'ogives.
// 153. Opus Quadratum : Technique du maçon qui consiste à faire alterner des pierres carrées ou rectangulaires en édifiant un mur.
// 154. Parement : Face visible du mur fait de pierres de tailles.
// 155. Pattée : Aux extrémités élargies (le motif de la croix pattée a souvent été confondu avec celui de la croix de Malte).
// 156. Pavement : Aire de pierres, de briques, de carreaux en céramique posés sur une couche de support.
// 157. Pendentif : Triangle de maçonnerie entre les grands arcs qui soutiennent une coupole.
// 158. Penture : Bande de métal fixée à plat sur le vantail d'une porte, sur un volet, de manière à l'articuler sur le gond.
// 159. Phylactère : banderoles à extrémités enroulées portant des légendes relatives au sujet représenté.
// 160. Piedroit (ou Pied-droit) : Montant vertical sur lequel retombent les voussures d'une arcade, d'une voûte.
// 161. Pignon à redents : Pignon orné de découpures en forme de dents, formant comme les marches d'escalier.
// 162. Pilastre : pilier plat, destiné à raidir un mur par l'intérieur ou par l'extérieur et formé par une légère saillie ; souvent muni d'une base moulurée et d'un chapiteau sculpté similaires à ceux de la colonne, il la supplante au moment de la première Renaissance.
// 163. Pilier : Support isolé, élevé pour recevoir une charge.
// 164. Pinacle : Amortissement élancé se terminant en forme de cône ou de pyramide effilés et qui se place notamment au sommet d'une culée, dans l'architecture gothique.
// 165. Polylobé : Constitué de plusieurs arcs de cercle.
// 166. Porche : Pièce ou galerie devant l'entrée d'un bâtiment, formant habituellement avant-corps bas, devant la façade du bâtiment qu'il commande, il est souvent hors œuvre.
// 167. Portail : Porte principale de grande largeur, parfois de caractère monumental.
// 168. Portique : Galerie couverte dont le toit est soutenu par des colonnes.
// 169. Retable : Ornement d'architecture ou de menuiserie sculptée d'église, contre lequel est appuyé l'autel.
// 170. Rinceaux : enroulements de feuillages qui se développent horizontalement.
// 171. Roman : Style d'architecture commun en Europe entre les périodes classique et gothique.
// 172. Sacristie : (du latin sacer, sacré) : annexe de l'église où sont déposés les vêtements sacerdotaux et les ornements liturgiques.
// 173. Stalles : (du germanique stal, lieu, place) : siège de chœur réservé aux membres du monastère. Généralement de bois, à dossier élevé, les stalles garnissent les deux côtés du chœur d'une église.
// 174. Tierceron : Nervure secondaire d'une voûte gothique.
// 175. Tore : Moulure ronde, demi-cylindrique, qui entoure la base d'une colonne, d'un pilier.
// 176. Tour : Édifice en pierre ou en bois dont les dimensions verticales sont supérieures aux dimensions horizontales.
// 177. Tour d'escalier : Tour ne contenant seulement qu'un escalier permettant l'accès aux étages d'un autre bâtiment contigu.
// 178. Tour porte : Tour dont le rez-de-chaussée est un passage d'entrée.
// 179. Tourelle : Tour peu développée en plan et qui, de ce fait, n'a pas l'importance d'un corps de bâtiment ; elle se développe sur la hauteur de plusieurs étages. Elle peut être en surplomb.
// 180. Transept : (du latin trans, au-delà, et septum, clôture) : nef transversale coupant la principale et donnant à l'église la forme symbolique de la croix. Lorsque le transept a une longueur supérieure à la largeur de l'édifice, il est dit saillant.
// 181. Travée d'intersection du transept et de la nef principale se nomme croisée de transept. Les parties du transept situées de part et d'autre de la croisée sont les croisillons.
// 182. Trumeau : Pan de mur entre deux embrasures au même niveau. Ne pas appeler trumeau le pilier qui sépare deux baies jumelées ou divise un portail à deux vantaux.
// 183. Tympan : Paroi de remplage diminuant par le haut l'ouverture d'une baie. Le tympan est généralement plein et dans le même matériau que l'embrasure. Architecture médiévale : partie supérieure d'un portail, délimitée par les voussures et le linteau.
// 184. Vaisseau : Espace intérieur, en général allongé, occupant la plus grande partie de la hauteur d'un bâtiment, ou, au moins, plusieurs étages.
// 185. Vantail : Panneau de fermeture pivotant sur un de ses bords verticaux.
// 186. Vitrail : Composition décorative translucide, formée de pièces de verre colorées maintenues par un réseau de plomb.
// 187. Volute : enroulement en spirale, formant notamment la décoration du chapiteau ionique.
// 188. Voussure : Partie cintrée couvrant l'embrasure d'une baie (portail d'une église) dans sa partie haute.
// 189. Voûte (en berceau, d'arête, d'ogives) : (du latin volvere, tourner) : construction destinée à couvrir un espace vide entre deux murs parallèles servant de piédroits à la voûte et devant résister aux poussées verticales et horizontales. Avec l'art roman apparut la voûte en pierre remplaçant la charpente traditionnelle. On construisit le plus souvent sur la nef principale une voûte en berceau et sur les bas-côtés des voûtes d'arêtes. Pour renforcer la poussée que les voûtes exercent sur les murs, on utilisa à l'extérieur des contreforts et à l'intérieur des arcs de décharge. L'invention de la voûte sur croisée d'ogives, avec l'art gothique, permit, beaucoup plus que dans l'architecture romane, d'accroître la hauteur des édifices. Les différents types de voûte sont: la voûte en berceau, constituée d'une série d'arcs continus dont elle peut reprendre les tracés (ex en plein cintre, brisé), la voûte en quart de cercle, en demi berceau, la voûte d'arêtes, formée par le recoupement de deux berceaux se croisant en angle droit, la voûte sur croisée d'ogives, formée de deux arcs ogifs se croisant en diagonale, caractéristique de l'architecture gothique.
// 190. Voûte d'arêtes : Formée par la rencontre de deux berceaux de même hauteur.
//
//

// Voici les définitions des mots expliqués dans le texte, formatées selon la structure Dart donnée :

/// Source: https://www.eure.gouv.fr/contenu/telechargement/35073/228403/file/ESSENTIEL_INFO_08_ANNEXE+1+La+lecture+simplifi%C3%A9e+du+plan+d%27une+%C3%A9glise+VOCABULAIRE.pdf
/// https://espritdepays.com/bonus/glossaire-architecture-religieuse
/// https://arras.catholique.fr/fichs/119967.pdf
class ChurchVocabularyData {
  List<ChurchWordEntry> data = [
    ChurchWordEntry(
      word: "Abaque",
      definition:
          "Tablette formant la partie supérieure d'un chapiteau ou d'une colonne.",
    ),
    ChurchWordEntry(
      word: "Abbatiale",
      definition: "Église principale d'une abbaye.",
    ),
    ChurchWordEntry(
      word: "Abbaye",
      definition:
          "Monastère d'hommes ou de femmes qui est dirigé par un abbé ou une abbesse. Établissement monastique où vivent des moines.",
    ),
    ChurchWordEntry(
      word: "Abside",
      definition:
          "Partie demi-circulaire d'une église, derrière l'autel. Durant le Haut Moyen Age, le clergé se range dans l'abside de la cathédrale et le siège de l'évêque y est disposé.",
    ),
    ChurchWordEntry(
      word: "Ajour",
      definition:
          "Ils peuvent être de différentes formes suivant le style, l'époque et leur emplacement dans la composition ; exemple : le trèfle (trilobe), le quatre-feuilles (quadrilobe), la mouchette (ou goutte d'eau), le soufflet, les polylobes (à partir de cinq lobes), l'écoinçon. La « rose» ou « rosace» constitue une ouverture circulaire de plus de 50 cm, souvent située au-dessus des portails, elle peut comporter un réseau. L'oculus est le jour circulaire situé au centre de la rosace.",
    ),
    ChurchWordEntry(
      word: "Allège",
      definition: "Pan de mur situé sous une fenêtre.",
    ),
    ChurchWordEntry(
      word: "Amortissement",
      definition:
          "Élément ornemental placé au sommet de tout axe vertical d'une élévation (pinacle, statue, etc.).",
    ),
    ChurchWordEntry(
      word: "Antéfise",
      definition:
          "Ornement, souvent en terre cuite ou en pierre, décorant le bord des toits.",
    ),
    ChurchWordEntry(
      word: "Appareil",
      definition:
          "Technique, de pose, la taille et le type de pierres utilisés pour la construction d'un mur (petit appareil : pierres carrées de petite taille ; grand appareil : pierres rectangulaires de grande taille ; appareil irrégulier : pierres de forme et de taille différentes).",
    ),
    ChurchWordEntry(
      word: "Arc (brisé, de décharge)",
      definition:
          "Assemblage de pierres ou claveaux, formé de deux segments de cercle prenant appui, aux extrémités, sur des murs verticaux, les piédroits, et bloqués, au milieu, par une clef. L'arc coiffe une ouverture, porte, fenêtre, arcade, arcature, ou bien s'inscrit à l'intérieur d'un mur (voir arc de décharge).",
    ),
    ChurchWordEntry(
      word: "Arc brisé",
      definition: "Arc aigu formé de deux segments de cercle qui se coupent.",
    ),
    ChurchWordEntry(
      word: "Arc de décharge",
      definition:
          "Arc disposé au-dessus d'un linteau ou d'une arcature afin de reporter la charge de la maçonnerie supérieure sur des points d'appui solides.",
    ),
    ChurchWordEntry(
      word: "Arc en accolade",
      definition:
          "Formé d'une succession de quatre courbes, convexes et concaves, est typique du gothique flamboyant civil (14e et 15e siècles).",
    ),
    ChurchWordEntry(
      word: "Arc en anse de panier",
      definition: "Arc surbaissé en demi-ellipse.",
    ),
    ChurchWordEntry(
      word: "Arc en plein cintre",
      definition:
          "Courbure intérieure d'une voûte, d'une arcade, d'un arc, composé d'une moitié de cercle.",
    ),
    ChurchWordEntry(
      word: "Arc formeret",
      definition:
          "Arc perpendiculaire à l'axe de la nef qui double de loin en loin la voûte et en renforce la solidité.",
    ),
    ChurchWordEntry(
      word: "Arc ogif ou ogive",
      definition:
          "Arc diagonal de renfort, unissant les arcs doubleaux et les arcs formerets en passant par la clef de voûte.",
    ),
    ChurchWordEntry(
      word: "Arc outrepassé, dit aussi en fer à cheval",
      definition: "Arc dont les extrémités dépassent la demi-circonférence.",
    ),
    ChurchWordEntry(
      word: "Arc surbaissé",
      definition:
          "A son centre géométrique en dessous de la ligne de naissance de l'arc.",
    ),
    ChurchWordEntry(
      word: "Arcade aveugle",
      definition:
          "Ouverture pratiquée sous un arc dans un mur. Elle est aveugle quand elle ne perce pas toute l'épaisseur du mur dans lequel elle est construite.",
    ),
    ChurchWordEntry(
      word: "Arcature",
      definition: "Suite de petites baies libres couvertes d'un arc.",
    ),
    ChurchWordEntry(
      word: "Arc-boutant",
      definition:
          "Arc extérieur à l'édifice, accolé à un mur pour transférer la poussée d'une voûte vers une pile de pierre appelée culée.",
    ),
    ChurchWordEntry(
      word: "Archivolte",
      definition:
          "Moulure, décoration supérieure sur un arc de portail ou sur une simple baie.",
    ),
    ChurchWordEntry(
      word: "Armarium",
      definition:
          "Excavation ménagée dans l'épaisseur d'un mur pour renfermer linge, objets divers ou pour servir de bibliothèque.",
    ),
    ChurchWordEntry(
      word: "Arrachement",
      definition:
          "Pierres saillant d'un mur, témoignant d'une destruction ou d'une volonté de reprise de maçonnerie.",
    ),
    ChurchWordEntry(
      word: "Astragale",
      definition:
          "Moulure située à la jonction du fût et du chapiteau d'une colonne.",
    ),
    ChurchWordEntry(
      word: "Baie",
      definition:
          "Ouverture fermée ou non d'une façade (arcade, fenêtre, porte). Une baie doit être divisée en plusieurs panneaux si sa surface excède 1 m². La division d'une baie de vitrail est rendue possible par l'utilisation des barlotières. Les barlotières supportent chaque panneau. Chaque panneau est maintenu entre deux barlotières (ou scellé dans la feuillure sur certains bords). Chaque panneau qui excède environ 40 cm de côté doit être consolidé par des vergettes.",
    ),
    ChurchWordEntry(
      word: "Baies géminées",
      definition: "Fenêtres séparées en deux par une colonne.",
    ),
    ChurchWordEntry(
      word: "Balcon",
      definition:
          "Étroite plate-forme à garde-corps, en surplomb devant une ou plusieurs baies. Le balcon est généralement extérieur.",
    ),
    ChurchWordEntry(
      word: "Baldaquin",
      definition:
          "Dais soutenu par des colonnes (ou suspendu), au-dessus d'un autel, d'un trône ou d'une porte d'entrée.",
    ),
    ChurchWordEntry(
      word: "Balustrade",
      definition:
          "Rangée de balustres (colonnettes moulurées) assemblées par une tablette, pour former un garde-corps.",
    ),
    ChurchWordEntry(
      word: "Bardeaux",
      definition:
          "Planche de bois mince et allongée servant à couvrir les toitures sur le mode du recouvrement.",
    ),
    ChurchWordEntry(word: "Barlong", definition: "De plan rectangulaire."),
    ChurchWordEntry(
      word: "Bas-côtés",
      definition:
          "(du latin bassus, bas et costatum, partie du corps où sont les côtes) : nefs latérales d'une église, de hauteur le plus souvent moindre que la nef principale. Ils sont généralement au nombre de deux, mais parfois quatre ou même plus. Synonyme : collatéraux.",
    ),
    ChurchWordEntry(
      word: "Base d'une colonne",
      definition:
          "Partie inférieure d'un objet sur laquelle il repose, assise.",
    ),
    ChurchWordEntry(
      word: "Bas-relief",
      definition: "Sculpture en faible saillie sur un fond.",
    ),
    ChurchWordEntry(
      word: "Bassière",
      definition:
          "Petite pièce voûtée servant d'évier et à entreposer des aliments au frais.",
    ),
    ChurchWordEntry(
      word: "Bâtière",
      definition: "Se dit d'un toit à deux pentes.",
    ),
    ChurchWordEntry(
      word: "Billettes",
      definition:
          "Ornement composé de petits tronçons de moulures régulièrement espacés et alternés. Décor fréquent sur les archivoltes des portails romans.",
    ),
    ChurchWordEntry(
      word: "Blocage",
      definition:
          "Mélange grossier de cailloux et de mortier remplissant l'intervalle entre les deux parements d'un mur.",
    ),
    ChurchWordEntry(
      word: "Bossage",
      definition:
          "Parement de pierre formant une bosse plus ou moins saillante par rapport à ses arêtes.",
    ),
    ChurchWordEntry(
      word: "Candiabre",
      definition:
          "Motif ornemental et vertical, très courant au XVIe siècle, composé de vases superposés d'où sortent des branches stylisées et symétriques, animées parfois d'animaux fantastiques.",
    ),
    ChurchWordEntry(
      word: "Cartouche",
      definition:
          "Ornement architectural évoquant une feuille de papier partiellement déroulée, servant d'encadrement à une inscription ou des armoiries.",
    ),
    ChurchWordEntry(
      word: "Cathédrale",
      definition:
          "Église principale du diocèse où se trouve le siège (cathedra) de l'évêque.",
    ),
    ChurchWordEntry(
      word: "Chambranle",
      definition: "Encadrement d'une porte, d'une fenêtre, d'une cheminée.",
    ),
    ChurchWordEntry(
      word: "Chancel",
      definition: "Clôture entre le chœur et la nef.",
    ),
    ChurchWordEntry(
      word: "Chapelle castrale",
      definition:
          "Chapelle attachée à un château ou manoir, destinée à la famille du seigneur.",
    ),
    ChurchWordEntry(
      word: "Chapelles rayonnantes",
      definition:
          "Petits espaces construits autour du chevet, et parfois autour des transepts, dans lesquels les moines prêtres pouvaient célébrer les offices religieux.",
    ),
    ChurchWordEntry(
      word: "Chapiteau",
      definition:
          "(du latin caput, tête) : pierre taillée souvent sculptée surmontant une colonne, un pilastre ou un pilier qui s'évase pour soutenir la retombée des arcs. Élément décoré de moulures et d'ornements divers qui coiffe le fût d'une colonne ou d'un pilier. Le chapiteau est essentiellement formé d'un corps (échine ou corbeille) et d'un couronnement (abaque ou tailleir). Dans l'architecture médiévale, l'astragale fait souvent partie du chapiteau.",
    ),
    ChurchWordEntry(
      word: "Charpente",
      definition:
          "Assemblage de pièces de bois, de métal etc. constituant ou soutenant les diverses parties d'une construction.",
    ),
    ChurchWordEntry(
      word: "Chemin de ronde",
      definition:
          "Coursière régnant intérieur au sommet d'une enceinte, bordée par un parapet.",
    ),
    ChurchWordEntry(
      word: "Cheminée",
      definition:
          "Foyer rond central dans la cuisine jusqu'au 12ème siècle. Elle est adossée au mur à partir du 12ème siècle.",
    ),
    ChurchWordEntry(
      word: "Chemise",
      definition: "Muraille enveloppant une tour ou quelque édifice fortifié.",
    ),
    ChurchWordEntry(
      word: "Chéneau",
      definition:
          "Conduit placé à la base d'un toit, pour recevoir les eaux de pluie.",
    ),
    ChurchWordEntry(
      word: "Chevet",
      definition: "Partie postérieure, externe, du chœur d'une église.",
    ),
    ChurchWordEntry(
      word: "Chevrons",
      definition:
          "Longues pièces de bois reposant sur les pannes d'une charpente dans le sens de la pente du toit et recevant le lattis ou la volige de couverture.",
    ),
    ChurchWordEntry(
      word: "Chœur",
      definition:
          "(du grec choros, chant) : partie de l'église réservée au clergé et aux chantres. Au sens strict on distingue le sanctuaire, partie de l'église où se trouve le maître autel et où évoluent les ministres de la messe, et le chœur, situé en avant ou en arrière, muni de stalles de chaque côté, et où se chante l'office des heures.",
    ),
    ChurchWordEntry(
      word: "Cimaises",
      definition: "Moulure qui forme la partie supérieure d'une corniche.",
    ),
    ChurchWordEntry(
      word: "Claustra",
      definition: "Fermeture des baies faite d'une dalle de pierre ajourée.",
    ),
    ChurchWordEntry(
      word: "Claveau",
      definition:
          "Pierre taillée en forme de coin qui entre dans la composition d'un arc ou d'une voûte.",
    ),
    ChurchWordEntry(
      word: "Clef",
      definition:
          "Claveau central qui bloque les autres pierres dans la position voulue.",
    ),
    ChurchWordEntry(
      word: "Clef de voûte",
      definition:
          "Pierre placée à l'intersection des nervures qui soutiennent une voûte.",
    ),
    ChurchWordEntry(
      word: "Clocher",
      definition:
          "Ouvrage : tour, mur percé de baies, campanile, etc., destiné à recevoir les cloches.",
    ),
    ChurchWordEntry(
      word: "Clocher-mur",
      definition:
          "Clocher composé d'un seul mur pignon avec ouvertures ou baies pour les cloches. On parle aussi de clocher peigne.",
    ),
    ChurchWordEntry(
      word: "Clocher-peigne",
      definition: "Clocher ayant des cloches placées en file en haut d'un mur.",
    ),
    ChurchWordEntry(
      word: "Clocher-porche",
      definition: "Clocher ayant à sa base un ou plusieurs porches.",
    ),
    ChurchWordEntry(
      word: "Clocher-tour",
      definition: "Clocher composé d'une tour abritant les cloches.",
    ),
    ChurchWordEntry(
      word: "Clocheton",
      definition: "Amortissement en forme de petit clocher.",
    ),
    ChurchWordEntry(
      word: "Cloître",
      definition:
          "(du latin claustrum, fermé) : partie d'un monastère formé de quatre galeries couvertes, entourant une cour ou un jardin. Elle est destinée à la promenade et à la médiation des religieux.",
    ),
    ChurchWordEntry(
      word: "Colombage",
      definition:
          "Construction en pan de bois dont les vides sont remplis par une maçonnerie légère.",
    ),
    ChurchWordEntry(
      word: "Colonne engagée",
      definition:
          "Support d'un arc généralement circulaire engagé dans le mur d'une église.",
    ),
    ChurchWordEntry(
      word: "Colonne torse",
      definition: "Colonne à fût contourné en spirale.",
    ),
    ChurchWordEntry(word: "Colonnette", definition: "Colonne petite ou mince."),
    ChurchWordEntry(
      word: "Console",
      definition:
          "Ensemble formé d'une ou de plusieurs assises en pierre ancrées dans la maçonnerie et disposées en ressaut les unes sur les autres afin de porter les échauguettes, bretéches et mâchicoulis en encorbellement, le plus en avant possible de la paroi. A l'époque classique, les consoles peuvent supporter un balcon.",
    ),
    ChurchWordEntry(
      word: "Contrefort",
      definition: "Pilier ou mur servant d'appui et de renfort à un autre mur.",
    ),
    ChurchWordEntry(
      word: "Corbeau",
      definition:
          "Pierre, pièce de bois ou de métal, de section verticale carrée ou rectangulaire, partiellement engagée dans un mur et portant une charge par sa partie saillante.",
    ),
    ChurchWordEntry(
      word: "Corniche",
      definition:
          "Moulure, à la rencontre du toit et du mur, couronnant, en surplomb, une façade.",
    ),
    ChurchWordEntry(
      word: "Coupoles",
      definition:
          "Voûtes hémisphériques élevées sur un plan circulaire, carré, hexagonal, octogonal ou elliptique.",
    ),
    ChurchWordEntry(
      word: "Coussiège",
      definition: "Banc de pierre dans l'embrasure d'une fenêtre.",
    ),
    ChurchWordEntry(
      word: "Coyau",
      definition:
          "Petit chevron prolongeant une toiture au-delà de la partie extérieure du mur, relevant la bordure du toit et destiné à éloigner du mur l'écoulement des eaux de pluie.",
    ),
    ChurchWordEntry(
      word: "Crochet",
      definition:
          "Élément décoratif en forme de crosse végétale ou de bourgeon recourbé, employé dans l'art gothique.",
    ),
    ChurchWordEntry(
      word: "Croisée d'ogives",
      definition:
          "Croisement de deux arcs, les ogives, qui servent d'armature à une voûte gothique remplie par un matériau de faible épaisseur et qui allègent la structure en reportant les forces sur les supports et non plus sur les murs.",
    ),
    ChurchWordEntry(
      word: "Croix de chemin",
      definition:
          "Croix monumentale érigée en bordure d'une voie ou à un carrefour.",
    ),
    ChurchWordEntry(
      word: "Croix pattée",
      definition: "Croix dont les extrémités s'évasent.",
    ),
    ChurchWordEntry(
      word: "Crypte",
      definition:
          "Chapelle, généralement souterraine, d'une église, où l'on plaçait le corps ou les reliques des martyrs, des saints.",
    ),
    ChurchWordEntry(
      word: "Cul de four",
      definition: "Voûte formée d'une demi-coupole ou quart de sphère.",
    ),
    ChurchWordEntry(
      word: "Cul de lampe",
      definition:
          "Pierre saillante qui sert à supporter une base de colonne, la retombée d'un arc, des nervures de voûte, une statue.",
    ),
    ChurchWordEntry(
      word: "Culée",
      definition:
          "Massif de maçonnerie qui arc-boute la poussée de la première et de la dernière arche d'un pont ou d'un arc.",
    ),
    ChurchWordEntry(
      word: "Culot",
      definition:
          "Sert à supporter une base de colonne la retombée d'un arc ou les nervures d'une voûte.",
    ),
    ChurchWordEntry(word: "Dallage", definition: "Sol dallé, pavement."),
    ChurchWordEntry(
      word: "Déambulatoire",
      definition: "Galerie entourant le chœur et reliant les bas-côtés.",
    ),
    ChurchWordEntry(
      word: "Demi-croisée",
      definition: "Petite baie à une traverse de pierre.",
    ),
    ChurchWordEntry(
      word: "Dôme",
      definition: "L'enveloppe extérieure d'une coupole.",
    ),
    ChurchWordEntry(
      word: "Dormant",
      definition:
          "Ensemble des éléments et des parties fixes en menuiserie, rapportés dans l'embrasure d'une baie pour porter les parties mobiles de la fermeture.",
    ),
    ChurchWordEntry(
      word: "Dosseret",
      definition:
          "Support rectangulaire dans lequel est engagée une colonne servant de départ à un arc-doubleau.",
    ),
    ChurchWordEntry(
      word: "Doubleau",
      definition:
          "Renfort en maçonnerie destiné à doubler la solidité d'une voûte.",
    ),
    ChurchWordEntry(
      word: "Écrasement",
      definition:
          "Disposition biaise par rapport au mur des parois latérales d'une baie.",
    ),
    ChurchWordEntry(
      word: "Église",
      definition:
          "Bâtiment consacré au culte chrétien où l'on célèbre la messe.",
    ),
    ChurchWordEntry(
      word: "Embrasure",
      definition:
          "Espace triangulaire libéré dans le mur pour l'aménagement une porte ou une fenêtre.",
    ),
    ChurchWordEntry(
      word: "Encorbellement",
      definition:
          "Élément en saillie sur un mur et supporté par des poutres, des corbeaux ou des consoles.",
    ),
    ChurchWordEntry(
      word: "Enfeu",
      definition:
          "Niche aménagée dans les parois intérieures ou extérieures de l'église pour abriter un tombeau ou un sarcophage.",
    ),
    ChurchWordEntry(
      word: "Engoulant",
      definition: "Extrémité sculptée en forme de gueule.",
    ),
    ChurchWordEntry(
      word: "Épi de faîtage",
      definition:
          "Ornement de forme pointue au sommet du toit, en céramique ou en métal.",
    ),
    ChurchWordEntry(
      word: "Faîtage",
      definition:
          "Pièce maîtresse de charpente reliant horizontalement l'angle supérieur des fermes et sur laquelle s'appuient les chevrons.",
    ),
    ChurchWordEntry(
      word: "Feuillure",
      definition:
          "Saillie pratiquée dans l'embrasure d'une baie pour recevoir les bords d'un vantail.",
    ),
    ChurchWordEntry(
      word: "Fleurdelisé",
      definition: "Parsemé de fleurs de lis.",
    ),
    ChurchWordEntry(
      word: "Fleuron",
      definition:
          "Ornement en forme de fleur stylisée qui termine les gâbles et les pinacles.",
    ),
    ChurchWordEntry(
      word: "Formeret",
      definition: "Arc latéral d'un compartiment voûté inséré dans un mur.",
    ),
    ChurchWordEntry(
      word: "Fresque",
      definition:
          "Peinture murale exécutée, à l'aide de couleurs délayées à l'eau, sur une couche de mortier frais à laquelle ces couleurs s'incorporent.",
    ),
    ChurchWordEntry(
      word: "Fronton",
      definition:
          "Ornementation triangulaire empruntée à l'antiquité grecque, couronnant un édifice, une porte ou une fenêtre et dont l'intérieur peut être sculpté. A partir de la Renaissance, il prend des formes variées : en arc de cercle creusé d'une coquille, à pans, brisé...",
    ),
    ChurchWordEntry(
      word: "Fût",
      definition: "Corps d'une colonne, habituellement cylindrique.",
    ),
    ChurchWordEntry(
      word: "Gâble",
      definition:
          "Dans l'art gothique, élément décoratif en forme de fronton triangulaire très étiré vers le haut, parfois ajouré, surmontant et encadrant l'arc d'une baie.",
    ),
    ChurchWordEntry(
      word: "Gargouille",
      definition:
          "Conduit d'évacuation des eaux, percé dans une corniche et généralement orné d'un mascaron ou d'un mufle.",
    ),
    ChurchWordEntry(
      word: "Géminée (baie)",
      definition: "Divisée en deux généralement par une colonnette.",
    ),
    ChurchWordEntry(
      word: "Gothique",
      definition:
          "Terme inventé, par mépris, par la Renaissance pour désigner un art qui n'était pas inspiré de l'antique. Il sert maintenant à désigner la période s'étendant de la fin du 12e siècle à la fin du 15e siècle. L'architecture gothique est caractérisée par l'élan en hauteur, favorisé par l'invention de la croisée d'ogives. En France, on distingue trois périodes : le gothique primitif, à la fin du 12e siècle avec arcs brisés, fenêtres hautes et plus nombreuses et début des arcs-boutants ; le gothique rayonnant, au 13e siècle qui est la période d'épanouissement avec le développement des vitraux ; le gothique flamboyant, aux 14e et 15e siècles, où les formes animées comme des flammes, d'où le nom, jouent des courbes et des contre-courbes.",
    ),
    ChurchWordEntry(
      word: "Grille",
      definition: "Clôture métallique plus ou moins ouvragée.",
    ),
    ChurchWordEntry(
      word: "Grotesque",
      definition:
          "Superposition de petits motifs, inspirés des Romains et formés d'entrelacs de feuillages, d'animaux chimériques ou de personnages caricaturés, paraissant suspendus par une cordelette invisible.",
    ),
    ChurchWordEntry(
      word: "Haut-relief",
      definition:
          "Sculpture aux reliefs très accusés sans qu'ils se détachent du fond.",
    ),
    ChurchWordEntry(
      word: "Imposte",
      definition:
          "Corps de moulures couronnant un piédroit ou un support vertical sans chapiteau et recevant la retombée d'un arc.",
    ),
    ChurchWordEntry(
      word: "Intaille",
      definition: "Pierre dure et fine gravée en creux pour servir de sceau.",
    ),
    ChurchWordEntry(
      word: "Intrados",
      definition: "Surface intérieure d'un arc.",
    ),
    ChurchWordEntry(
      word: "Jouée",
      definition:
          "Parement latéral d'une baie, cloison latérale d'une stalle de chœur.",
    ),
    ChurchWordEntry(
      word: "Jour",
      definition:
          "Petite baie, généralement sans fermeture, donnant de la lumière ou ayant un rôle décoratif.",
    ),
    ChurchWordEntry(
      word: "Jubé",
      definition:
          "Tribune transversale en forme de galerie, élevée entre la nef et le chœur dans certaines églises.",
    ),
    ChurchWordEntry(
      word: "Lancette",
      definition:
          "Ce sont les jours situés entre les meneaux, elles sont elles-mêmes divisées par les barlotières qui permettent la pose des vitraux. Dans le gothique flamboyant, arc en tiers-point surhaussé (voir arc), en forme de fer de lance, surmontant en particulier les divisions verticales d'une baie.",
    ),
    ChurchWordEntry(
      word: "Lanternon",
      definition:
          "Petite construction de plan centré et de forme élancée, percée de fenêtres et placée au faîte d'un toit.",
    ),
    ChurchWordEntry(
      word: "Larmier",
      definition:
          "Sorte de bandeau ou de corniche servant à empêcher les eaux de pluie de couler le long du mur.",
    ),
    ChurchWordEntry(
      word: "Lierne",
      definition:
          "Sur une voûte à croisée d'ogives, nervure secondaire qui part de la clef en soulignant le faîte de la voûte ou le voûtain.",
    ),
    ChurchWordEntry(
      word: "Linteau",
      definition: "Pierre disposée à l'horizontale au-dessus d'une baie.",
    ),
    ChurchWordEntry(
      word: "Lobe",
      definition:
          "Segment de cercle découpé dans un arc, découpure d'un arc en segment de cercle.",
    ),
    ChurchWordEntry(
      word: "Mandorle",
      definition: "Gloire ovale en forme d'amande.",
    ),
    ChurchWordEntry(
      word: "Marque de tâcheron",
      definition:
          "Signe gravé sur la pierre par le tailleur de pierre, il s'agit de la signature du travail réalisé par le tailleur.",
    ),
    ChurchWordEntry(
      word: "Mascaron",
      definition:
          "Masque sculpté de fantaisie pouvant décorer la clef de l'arc ou de la plate-bande d'une baie, l'orifice d'une fontaine, etc.",
    ),
    ChurchWordEntry(
      word: "Mausolée",
      definition: "Tombeau fastueux de grandes dimensions.",
    ),
    ChurchWordEntry(
      word: "Médaillon",
      definition: "Petit bas-relief circulaire représentant une effigie.",
    ),
    ChurchWordEntry(
      word: "Meneau",
      definition:
          "Montants et traverses, le plus souvent en pierre, qui partagent l'ouverture d'une fenêtre en plusieurs compartiments.",
    ),
    ChurchWordEntry(
      word: "Méplat",
      definition: "Sculpture d'un relief uni et peu marqué.",
    ),
    ChurchWordEntry(
      word: "Merlon",
      definition: "Partie pleine d'un rempart entre deux créneaux.",
    ),
    ChurchWordEntry(
      word: "Métope",
      definition:
          "Intervalle entre les modillons d'une corniche (abside d'église romane).",
    ),
    ChurchWordEntry(
      word: "Modillons",
      definition:
          "Corbeaux ornés soutenant une corniche d'une abside de type roman. Ils représentant souvent des figures humaines licencieuses grimaçantes en alternance avec des animaux ou monstres du bestiaire roman, symboles du combat perpétuel entre le Bien et le Mal.",
    ),
    ChurchWordEntry(
      word: "Moellon",
      definition:
          "Pierre, non taillée ou grossièrement taillée, de petites dimensions.",
    ),
    ChurchWordEntry(
      word: "Mortier",
      definition:
          "Mélange de chaux, de sable et d'eau qui sert à lier les pierres.",
    ),
    ChurchWordEntry(
      word: "Mouchette",
      definition:
          "Découpe en forme de flamme qui apparaît dans le réseau des fenêtres, des balustrades, de style flamboyant et s'y combine avec le soufflet (quadrilobe).",
    ),
    ChurchWordEntry(
      word: "Mur de refend",
      definition: "Mur porteur d'un bâtiment formant une division intérieure.",
    ),
    ChurchWordEntry(
      word: "Mur pignon",
      definition: "Mur terminé en triangle suivant la pente d'un comble.",
    ),
    ChurchWordEntry(
      word: "Mur-boutant ou Contrefort",
      definition:
          "Bloc de maçonnerie élevé à l'extérieur d'un mur pour l'épauler ou le renforcer.",
    ),
    ChurchWordEntry(
      word: "Nef",
      definition:
          "(du latin navis, bateau) : partie centrale de l'église s'ouvrant sur le chœur. Les églises sont à une ou plusieurs nefs. A côté de la nef centrale, les nefs latérales se nomment collatéraux ou bas-côtés. La nef transversale est appelée transept. Partie de l'église où se tiennent les fidèles, qui va du transept à la façade principale et qui peut comporter 2 ou 4 bas-côtés.",
    ),
    ChurchWordEntry(
      word: "Nervure",
      definition:
          "Grosse moulure d'une voûte, en particulier d'une voûte gothique. Les nervures sont, en général, la partie visible des arcs constituant l'ossature de cette voûte.",
    ),
    ChurchWordEntry(
      word: "Niche",
      definition:
          "Renfoncement dans l'épaisseur d'un mur, théoriquement destiné à recevoir un élément décoratif, et son encadrement.",
    ),
    ChurchWordEntry(
      word: "Oculus",
      definition:
          "Petite ouverture de forme circulaire ou proche du cercle, munie ou non d'un panneau vitré.",
    ),
    ChurchWordEntry(
      word: "Ogive",
      definition:
          "(du latin obviare, rencontrer) : nervures diagonales placées sous les arêtes d'une voûte gothique. Leur croisement forme la croisée d'ogives.",
    ),
    ChurchWordEntry(
      word: "Opus Quadratum",
      definition:
          "Technique du maçon qui consiste à faire alterner des pierres carrées ou rectangulaires en édifiant un mur.",
    ),
    ChurchWordEntry(
      word: "Parement",
      definition: "Face visible du mur fait de pierres de tailles.",
    ),
    ChurchWordEntry(
      word: "Pattée",
      definition:
          "Aux extrémités élargies (le motif de la croix pattée a souvent été confondu avec celui de la croix de Malte).",
    ),
    ChurchWordEntry(
      word: "Pavement",
      definition:
          "Aire de pierres, de briques, de carreaux en céramique posés sur une couche de support.",
    ),
    ChurchWordEntry(
      word: "Pendentif",
      definition:
          "Triangle de maçonnerie entre les grands arcs qui soutiennent une coupole.",
    ),
    ChurchWordEntry(
      word: "Penture",
      definition:
          "Bande de métal fixée à plat sur le vantail d'une porte, sur un volet, de manière à l'articuler sur le gond.",
    ),
    ChurchWordEntry(
      word: "Phylactère",
      definition:
          "Banderoles à extrémités enroulées portant des légendes relatives au sujet représenté.",
    ),
    ChurchWordEntry(
      word: "Piedroit (ou Pied-droit)",
      definition:
          "Montant vertical sur lequel retombent les voussures d'une arcade, d'une voûte.",
    ),
    ChurchWordEntry(
      word: "Pignon à redents",
      definition:
          "Pignon orné de découpures en forme de dents, formant comme les marches d'escalier.",
    ),
    ChurchWordEntry(
      word: "Pilastre",
      definition:
          "Pilier plat, destiné à raidir un mur par l'intérieur ou par l'extérieur et formé par une légère saillie ; souvent muni d'une base moulurée et d'un chapiteau sculpté similaires à ceux de la colonne, il la supplante au moment de la première Renaissance.",
    ),
    ChurchWordEntry(
      word: "Pilier",
      definition: "Support isolé, élevé pour recevoir une charge.",
    ),
    ChurchWordEntry(
      word: "Pinacle",
      definition:
          "Amortissement élancé se terminant en forme de cône ou de pyramide effilés et qui se place notamment au sommet d'une culée, dans l'architecture gothique.",
    ),
    ChurchWordEntry(
      word: "Polylobé",
      definition: "Constitué de plusieurs arcs de cercle.",
    ),
    ChurchWordEntry(
      word: "Porche",
      definition:
          "Pièce ou galerie devant l'entrée d'un bâtiment, formant habituellement avant-corps bas, devant la façade du bâtiment qu'il commande, il est souvent hors œuvre.",
    ),
    ChurchWordEntry(
      word: "Portail",
      definition:
          "Porte principale de grande largeur, parfois de caractère monumental.",
    ),
    ChurchWordEntry(
      word: "Portique",
      definition: "Galerie couverte dont le toit est soutenu par des colonnes.",
    ),
    ChurchWordEntry(
      word: "Retable",
      definition:
          "Ornement d'architecture ou de menuiserie sculptée d'église, contre lequel est appuyé l'autel.",
    ),
    ChurchWordEntry(
      word: "Rinceaux",
      definition:
          "Enroulements de feuillages qui se développent horizontalement.",
    ),
    ChurchWordEntry(
      word: "Roman",
      definition:
          "Style d'architecture commun en Europe entre les périodes classique et gothique.",
    ),
    ChurchWordEntry(
      word: "Sacristie",
      definition:
          "(du latin sacer, sacré) : annexe de l'église où sont déposés les vêtements sacerdotaux et les ornements liturgiques.",
    ),
    ChurchWordEntry(
      word: "Stalles",
      definition:
          "(du germanique stal, lieu, place) : siège de chœur réservé aux membres du monastère. Généralement de bois, à dossier élevé, les stalles garnissent les deux côtés du chœur d'une église.",
    ),
    ChurchWordEntry(
      word: "Tierceron",
      definition: "Nervure secondaire d'une voûte gothique.",
    ),
    ChurchWordEntry(
      word: "Tore",
      definition:
          "Moulure ronde, demi-cylindrique, qui entoure la base d'une colonne, d'un pilier.",
    ),
    ChurchWordEntry(
      word: "Tour",
      definition:
          "Édifice en pierre ou en bois dont les dimensions verticales sont supérieures aux dimensions horizontales.",
    ),
    ChurchWordEntry(
      word: "Tour d'escalier",
      definition:
          "Tour ne contenant seulement qu'un escalier permettant l'accès aux étages d'un autre bâtiment contigu.",
    ),
    ChurchWordEntry(
      word: "Tour porte",
      definition: "Tour dont le rez-de-chaussée est un passage d'entrée.",
    ),
    ChurchWordEntry(
      word: "Tourelle",
      definition:
          "Tour peu développée en plan et qui, de ce fait, n'a pas l'importance d'un corps de bâtiment ; elle se développe sur la hauteur de plusieurs étages. Elle peut être en surplomb.",
    ),
    ChurchWordEntry(
      word: "Transept",
      definition:
          "(du latin trans, au-delà, et septum, clôture) : nef transversale coupant la principale et donnant à l'église la forme symbolique de la croix. Lorsque le transept a une longueur supérieure à la largeur de l'édifice, il est dit saillant.",
    ),
    ChurchWordEntry(
      word: "Trumeau",
      definition:
          "Pan de mur entre deux embrasures au même niveau. Ne pas appeler trumeau le pilier qui sépare deux baies jumelées ou divise un portail à deux vantaux.",
    ),
    ChurchWordEntry(
      word: "Tympan",
      definition:
          "Paroi de remplage diminuant par le haut l'ouverture d'une baie. Le tympan est généralement plein et dans le même matériau que l'embrasure. Architecture médiévale : partie supérieure d'un portail, délimitée par les voussures et le linteau.",
    ),
    ChurchWordEntry(
      word: "Vaisseau",
      definition:
          "Espace intérieur, en général allongé, occupant la plus grande partie de la hauteur d'un bâtiment, ou, au moins, plusieurs étages.",
    ),
    ChurchWordEntry(
      word: "Vantail",
      definition:
          "Panneau de fermeture pivotant sur un de ses bords verticaux.",
    ),
    ChurchWordEntry(
      word: "Vitrail",
      definition:
          "Composition décorative translucide, formée de pièces de verre colorées maintenues par un réseau de plomb.",
    ),
    ChurchWordEntry(
      word: "Volute",
      definition:
          "Enroulement en spirale, formant notamment la décoration du chapiteau ionique.",
    ),
    ChurchWordEntry(
      word: "Voussure",
      definition:
          "Partie cintrée couvrant l'embrasure d'une baie (portail d'une église) dans sa partie haute.",
    ),
    ChurchWordEntry(
      word: "Voûte (en berceau, d'arête, d'ogives)",
      definition:
          "(du latin volvere, tourner) : construction destinée à couvrir un espace vide entre deux murs parallèles servant de piédroits à la voûte et devant résister aux poussées verticales et horizontales. Avec l'art roman apparut la voûte en pierre remplaçant la charpente traditionnelle. On construisit le plus souvent sur la nef principale une voûte en berceau et sur les bas-côtés des voûtes d'arêtes. Pour renforcer la poussée que les voûtes exercent sur les murs, on utilisa à l'extérieur des contreforts et à l'intérieur des arcs de décharge. L'invention de la voûte sur croisée d'ogives, avec l'art gothique, permit, beaucoup plus que dans l'architecture romane, d'accroître la hauteur des édifices. Les différents types de voûte sont: la voûte en berceau, constituée d'une série d'arcs continus dont elle peut reprendre les tracés (ex en plein cintre, brisé), la voûte en quart de cercle, en demi berceau, la voûte d'arêtes, formée par le recoupement de deux berceaux se croisant en angle droit, la voûte sur croisée d'ogives, formée de deux arcs ogifs se croisant en diagonale, caractéristique de l'architecture gothique.",
    ),
    ChurchWordEntry(
      word: "Voûte d'arêtes",
      definition: "Formée par la rencontre de deux berceaux de même hauteur.",
    ),
  ];
}
