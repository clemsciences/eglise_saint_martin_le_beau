import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class ChurchVocabularyPage extends StatelessWidget {
  const ChurchVocabularyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: MainBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SelectableText(
                  "Vocabulaire des églises",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
