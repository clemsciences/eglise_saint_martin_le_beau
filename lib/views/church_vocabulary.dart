import 'package:eglise_saint_martin_le_beau/data/church_vocabulary_data.dart';
import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/items/church_vocabulary_item.dart';
import 'package:eglise_saint_martin_le_beau/views/items/limited_item.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:eglise_saint_martin_le_beau/views/text/link_textspan.dart';
import 'package:flutter/material.dart';

/// https://www.eure.gouv.fr/contenu/telechargement/35073/228403/file/ESSENTIEL_INFO_08_ANNEXE+1+La+lecture+simplifi%C3%A9e+du+plan+d%27une+%C3%A9glise+VOCABULAIRE.pdf
///
/// Source: https://www.eure.gouv.fr/contenu/telechargement/35073/228403/file/ESSENTIEL_INFO_08_ANNEXE+1+La+lecture+simplifi%C3%A9e+du+plan+d%27une+%C3%A9glise+VOCABULAIRE.pdf
/// https://espritdepays.com/bonus/glossaire-architecture-religieuse
/// https://arras.catholique.fr/fichs/119967.pdf
class ChurchVocabularyPage extends StatelessWidget {
  const ChurchVocabularyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: Column(
        children: [
          MainBackground(
            child: Center(
              child: Column(
                children: [
                  SelectableText(
                    "Vocabulaire des églises",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  SelectableText.rich(TextSpan(children: [
                    TextSpan(text: "Source du vocabulaire : "),
                    LinkTextSpan(url: "https://www.eure.gouv.fr/contenu/telechargement/35073/228403/file/ESSENTIEL_INFO_08_ANNEXE+1+La+lecture+simplifi%C3%A9e+du+plan+d%27une+%C3%A9glise+VOCABULAIRE.pdf", urlText: "un fichier PDF de www.eure.gouv.fr")
                  ]))
                ],
              ),
            ),
          ),
          // Container(
          //   child: Column(
          //     children: [
          //       ...ChurchVocabularyData().data.map((item) => LimitedItem(child: ChurchVocabularyItem(entry: item,)))
          //     ]
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
                itemCount: ChurchVocabularyData().data.length,
                itemBuilder: (context, index) => LimitedItem(child: ChurchVocabularyItem(entry: ChurchVocabularyData().data[index],))
            ),
              ),
        ],
      ),
    );
  }
}
