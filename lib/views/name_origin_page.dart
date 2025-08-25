import 'package:eglise_saint_martin_le_beau/data/translations.dart';
import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:eglise_saint_martin_le_beau/views/translation_widget.dart';
import 'package:flutter/material.dart';

class NameOriginPage extends StatelessWidget {
  const NameOriginPage({super.key});

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
                        "Origine",
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
                  SelectableText.rich(TextSpan(text: "Saint-Martin-le-Beau tient sa spécificité de saint Martin lui-même. Ce n'est pas durant sa vie qu'il a donné son importance à la ville, mais c'est le culte porté à son encontre qui a permis à ce village de gagner un nom significatif en Touraine.")),
                  SelectableText.rich(TextSpan(text: "Le premier historien Franc, qui a entre autres raconté la vie et la mort des rois mérovingiens, a raconté la vie et l'influence de saint Martin en Touraine. Bien que celui-ci a contribué à christianiser les territoires aux alentours, il n'avait pas été fait mention d'une ville pouvant s'apparenter à notre Saint-Martin-le-Beau d'aujourd'hui [PT22].")),
                  SelectableText.rich(TextSpan(text: "")),
                  SelectableText.rich(TextSpan(text: "")),
                  SelectableText.rich(TextSpan(text: "")),

                  TranslationWidget(translationExtract: turonenseMagnum[0])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
