import 'package:eglise_saint_martin_le_beau/models/author.dart';
import 'package:eglise_saint_martin_le_beau/models/source.dart';
import 'package:eglise_saint_martin_le_beau/models/source_entity.dart';
import 'package:eglise_saint_martin_le_beau/models/source_extract.dart';

class SourceData {
  static Author martineLaine = Author(
    firstName: "Martine",
    lastName: "Lainé",
    birthday: null,
  );

  static SourceEntity a = SourceEntity(
    title:
        "Dictionnaire géographique, historique et biographique d'Indre-et-Loire et de l'ancienne province de Touraine",
    authors: [
      Author(firstName: "Jacques-Xavier", lastName: "Carré de Busserolle"),
    ],
    publicationYear: "",
    publisher: "Joseph Floch",
    url: "",
    officialDescription:
        """Carré de Busserolle (Jacques-Xavier), Dictionnaire historique et biographique d'Indre-et-Loire et de l'ancienne province de Touraine, Mayenne, Joseph Floch, s. d.""",
  );
  static SourceEntity paroissesDeTouraine = SourceEntity(title: "Des paroisses de Touraine aux communes d'Indre-et-Loire. La formation des territoires.", authors: [Author(firstName: "Elisabeth", lastName: "Zadora-Rio")],
  publisher: "FERACF", timestamp: DateTime(2008), publicationYear: "2008");
  static List<Source> data = [
    SourceEntity(
      title:
          "Saint-Martin-le-Beau : église paroissiale Saint-Martin (place de l'Église), Centre, Indre-et-Loire, Saint-Martin-le-Beau",
      timestamp: DateTime(2014),
      url:
          "https://patrimoine.centre-valdeloire.fr/gertrude-diffusion/dossier/IA37005338",
      authors: [martineLaine],
      publisher: "Région Centre-Val de Loire",
      publicationYear: "2014-2022",
      description: "Source principale de ce dossier",
      officialDescription:
          """ Saint-Martin-le-Beau : église paroissiale Saint-Martin (place de l'Église), Centre, Indre-et-Loire, Saint-Martin-le-Beau
Lainé Martine
Date d'enquête: 2014 ; Dernière mise à jour en 2022
(c) Région Centre-Val de Loire, Inventaire général """,
    ),
    a,

    SourceBookExtract(
      source: a,
      page: 207,
      url: "https://gallica.bnf.fr/ark:/12148/bpt6k2100434/f210.item",
      internalReference: "CdB207"
    ),
    SourceBookExtract(
      source: a,
      page: 208,
      url: "https://gallica.bnf.fr/ark:/12148/bpt6k2100434/f211.item",
      internalReference: "CdB209"
    ),
    SourceBookExtract(source: paroissesDeTouraine, page: 22, description: "Table 1 : Lieux de culte mentionnés avant 600 (hors Tours). Saint-Martin-le-Beau n'y figure pas.",
    internalReference: "PT22"),

    // https://gallica.bnf.fr/ark:/12148/bpt6k12397p/f317.item

    // https://gallica.bnf.fr/ark:/12148/bpt6k56242035
  ];
}
