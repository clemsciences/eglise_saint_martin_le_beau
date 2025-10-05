import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class ChurchDescriptionPage extends StatelessWidget {
  const ChurchDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainBackground(
              child: Container(
                child: Column(
                  children: [
                    Center(
                      child: SelectableText(
                        "Description de l'église",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SelectableText.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: "Bâtiment principal\n", style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(
                          text:
                              "Un ensemble hétérogène orienté, approximativement carré d’environ 500m2 (21/23 m) couvert par 3 toitures parallèles pour une hauteur au faîtage de 16m. La pointe de la toiture pyramidale du clocher culmine à 19m.\n",
                        ),
                        TextSpan(
                          text:
                              """Son aspect actuel est le fruit de 10 siècles de constructions, ajouts, remaniements et restaurations.
    • Un clocher massif XIe.
    • Un vaisseau centrale XIIe Roman, précède le chœur et l’abside en cul de four XII/XIIIe.
    • Au XIIe, à l’Ouest une façade monumentale fortement restaurée au XIXe (1863 ?).
    • Deux bas-côtés, Nord et Sud, ajoutés aux XV/XVIe.
    • Après 1872 des bâtiments accolés au Nord sont détruits et une sacristie extérieure crénelée, sera ajoutée.
    • Au XXe les aménagements urbains autour du monument le dégagent complètement pour lui donner son environnement et aspect actuel.
    • Au XXIe une restauration majeure à la suite de l’incendie de 2015.\n""",
                        ),
                        TextSpan(text: "Extérieur\n", style: Theme.of(context).textTheme.headlineMedium),
                        TextSpan(text: """
    • La façade Ouest d’origine Romane en 3 parties, témoigne des différentes périodes de construction. La partie centrale, correspondant à l’église d’origine, comprend une avancée avec un grand oculus fermé par un vitrail, surmontant un élégant porche Roman de voussures moulurés à 4 rouleaux en plein cintre décoré d’un élégant registre de sculptures végétales. Le rouleau d’archivolte présente une clé constituée par 2 personnages effrayés, affrontant le diable. Cet ensemble typiquement Roman est pour une large part une reconstitution du XIXe. Une gravure montre l’absence des colonnes de droite, restaurées/crées au XIXe…

Au N/O une rare chaire extérieure en pierre. Après la révolution elle servira pour les annonces officielles du Maire de la commune.

    • L’abside à l’Est : Très bel architecture romane semi-circulaire bien conservé. L’élégante voûte en cul de four en pierre appareillées est portée par 10 arcs en boudins engagés. La clef de voûte est sculptée d’un Christ en gloire. Les 3 baies conservées sur les 5 originales après la réalisation des passages vers les deux bas-côtés, sont encadrées de fines colonnettes engagées portant sur des consoles sculptées de personnages. Admirons au passage l’élégance avec laquelle fut résolue la délicate transition au niveau des arcatures.
A l’extérieur les baies sont encadrées d’élégantes moulurations qui en souligne l’architecture. Au niveau de l’égout de la toiture, une corniche comporte un décor de modillons sculptés de symbole (tonnelet) et de têtes plus ou moins grotesques. L’on y retrouve des « visages feuillus ». Dans l’iconographie religieuse chrétienne initiatique, ces têtes rappellent l’ancien culte du dieu Celte cornu, Cernunnos, figure majeure du panthéon gaulois évoquant la nature et associé au diable et combattu par l’Église (triomphante …).\n"""),
                        TextSpan(text: "Intérieur\n", style: Theme.of(context).textTheme.headlineMedium),
                        TextSpan(text: """
    • Au Sud, chapelle sainte Catherine dédiée à Sainte Rose de Lima, construite entre 1671 et 1729.
    • Au Nord chapelle de l’immaculée conception.\n"""),
                        TextSpan(text: "Toitures : Charpentes et voutement :\n", style: Theme.of(context).textTheme.headlineMedium),
                        TextSpan(text: """
    • A l’origine les 3 vaisseaux couverts par 3 toitures parallèles distinctes, sont charpentés en bois.
    • Au XVIe un projet de voûte en pierre pour la partie Nord sera ébauché puis abandonné. Cela donne l’occasion d’admirer la précision et l’élégance des assises moulurées au départ des nervures des croisées d’ogive, élégamment reprises par le voûtement en bois en croisée d’ogive de la restauration de 2019.
    • Au XIXe des restaurations importantes installent un décor de voûtes enduites en plâtre ou chaux aérienne, décor faux-joints sur support brique suspendue sous les charpentes probablement restaurées. Ces décors unifient l’architecture dans un esprit de maçonneries voûtées régulières d’inspiration médiévale, pratique courante dans nos églises au XIXe.

    • Au XXIe, suite à l’incendie de 2015 qui détruisit les toitures du bas-côté Nord et de la nef centrale, l’Architecte choisi de supprimer les fausses voûtes en plâtre du bas-côté Nord et de la nef au profit d’un voûtement en bois laissé apparent, suspendu sous les charpentes à « entrait retroussé » au Nord et une charpente à la « Philibert de Lormes » pour la nef. Le Bas-côté Sud non impacté par l’incendie, conservera sa charpente à « chevron formant ferme » et le décor de fausse voûte appareillées. 
Badigeons colorés : cette restauration est l’occasion d’homogénéiser les décors avec un badigeons de chaux blanche et ocre soulignant les lignes majeures comme les arcs et sculptures, laissant voir quelques rare traces de l’ancien décor à fresque coloré en pigments naturels terre de sienne terre d’ombre.

    • Charpente à la Philibert de Lormes : Ce célèbre architecte renaissance qui servi sous 3 rois ainsi que Catherine de Médicis, au Louvre à Paris, invente un type de charpente modulaire permettant d’économiser le bois de construction. Les grandes grumes ont quasiment disparue à la suite des nombreuses constructions de la période ogivale. Son système est à l’origine des charpentes en lamellés-collées modernes en assemblant des planches de petites longueur et faible épaisseur. Avec une misent en œuvre rapide et solide, elles permettent l’utilisation des combles d’un volume semi-circulaire libre de toute pièce de bois intermédiaire, entraits, poinçon, contre fiche etc.... La sous-face peut être habillée d’une fausse voûte suspendue, en enduit sur support brique ou lattis bois, ou en lambris bois évoquant une coque de navire renversé. Le château de Chenonceau est couvert d’une telle charpente. Au XVIIe VAUBAN utilisera ce système pour couvrir ses forts en montagne (Mont-Dauphin près d’Embrun) et les protéger des intempéries. Système constructif de protection aux intempéries économique, simple, léger et robuste, facilitant la dépose de la toiture pour la mise en batterie des canons et mortiers.\n"""),
                        TextSpan(text: """\n"""),

                        TextSpan(text: "Mobiliers\n", style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(text: """    • Adossé au pilier N-O du chœur un sobre Christ en croix moderne en bronze d’une très belle facture.
    • Dans la chapelle N-E, le retable en bois reçoit un très joli tabernacle moderne en forme pyramidale.
    • Dans l’angle S/Œ un baptistère en marbre gris du XVIIe clos d’une grille en fonte.\n"""),

                        TextSpan(text: "Vitraux\n", style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(text: """Ateliers verrier LOBIN et FOURNIER & CLEMENT de Tours. Réalisation 1864/1871. 
Certains portent la mention des donateurs Mr. Jérôme Coulon, Mr. Belle et Mme. Laluisant.
D’une facture typique des vitraux du XIXe, ils sont faits d’une lancette unique divisée en 3 registres. Ces panneaux en verre blanc ou colorés reçoivent un décors réaliste peint en grisaille d’une facture maniériste et un peu solennel typique de l’art officiel. Ils sont signés de l’atelier des verriers. Certain porte le nom des donateurs, pratique héritée de la période ogivale où nombre de vitraux étaient payés par les corporations qui entendaient bien le faire savoir. Cela nous donne de précieux témoignages sur la vie et les métier au moyen-âge. 

Les vitraux de l’abside et de l’oculus, également du XIXe, évoquant la vie de saint Martin sont d’inspiration médiévale dans leur registre et iconographie, utilisant des verres colorés.

    • Mort et translation du corps de saint Martin.
    • Arrivée du corps de saint Martin à Tours.
    • Inhumation de saint Martin à Tours et construction d’une basilique.
    • Miracle au tombeau de saint Martin.
    • Saint Perpet pose sur la tombe de saint Martin la dalle envoyée par saint Euphrone.
    • La « reversion » : Saint Martin béni un arbre que 2 hommes s’apprêtent à abattre
    • Translation du chef de saint Martin.
    • Les chrétiens au tombeau de saint Martin.
    • Baptême de saint Martin.
    • Consécration épiscopale de saint Martin.
    • Oculus Ouest, vie de saint Martin
    • Bas-côté Sud saint Fiacre et sainte Barbe vitraux XVIe réinsérés dans la composition.

Chapelle de l’immaculée conception bas-côté Nord, un très élégant vitrail en 2 registres évoque l’Annonciation et la visitation, vitrail du XVIe pour ce dernier.\n"""),
                        TextSpan(text: """\n"""),
                        TextSpan(text: """Sculptures\n""", style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(text: """    • Haut-relief en pierre La Déploration de Jésus XVIème : St Jean, Marie, Marie Madeleine et la donatrice (coiffée à l’italienne). Trace de polychromie.

    • Trois Sculptures signées Charles-Jean AVISSEAU, céramiste Tourangeau du XIXème siècle. Ces œuvres d’une belle facture sont en céramique peinte en blanc (effet marbre ou plâtre ?). 
Sainte Barbe de 1856 inspirée d’une sculpture du XVIIIème présente dans l’église St Roch à Paris 
Sainte Rose de Lima première sainte Sud-américaine, placée en 1824/26 dans la chapelle Sainte Catherine au S/E dédiée à sainte Rose en 1729 réputée guérir l’exéma. Elle est représentée sur un billet de banque du Pérou
Une vierge au serpent XIXème est en plâtre blanc.

    • Divers sculptures en plâtre polychrome ou blanche de facture naïve, Un évêque, un saint Vincent (tournant ?) patron des vignerons, l’immaculée conception, Sainte Jeanne d’Arc etc…\n"""),
                        TextSpan(text: """Œuvres picturales remarquables :\n""", style: Theme.of(context).textTheme.titleMedium),
                        TextSpan(text: """    • La charité Saint Martin XVIIème, huile sur toile restaurée suite à l’incendie, exposé au musée des Beaux-Arts de Tours avant son retour dans l’église.
    • Jésus et la samaritaine fin XVIIème, huile sur toile
    • Chemin de croix XIXème carton peint sur support bois. Il manque aujourd’hui une étape si l’on en croit l’inventaire réalisé avant l’incendie.\n"""),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
