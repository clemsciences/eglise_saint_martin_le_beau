import 'package:eglise_saint_martin_le_beau/models/source_translation.dart';
import 'package:flutter/material.dart';

class TranslationWidget extends StatelessWidget {
  const TranslationWidget({super.key, required this.translationExtract});

  final SourceTranslationExtract translationExtract;

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //     itemCount: translationExtract.originText.length,
    //     itemBuilder: (context, index) {
    //       return Row(
    //         children: [
    //           Flexible(flex: 1,
    //             child: SelectableText.rich(TextSpan(children: [
    //               TextSpan(text: translationExtract.originText[index])
    //             ])),),
    //           Flexible(flex: 1,
    //             child: SelectableText.rich(TextSpan(children: [
    //               TextSpan(text: translationExtract.translatedText[index])
    //             ])),),
    //         ],
    //       );
    //     });
    return Column(
      children: [
        for(var index = 1; index < translationExtract.originText.length; index++)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 1,
                child: SelectableText.rich(TextSpan(children: [
                  TextSpan(text: translationExtract.originText[index])
                ])),),
              Flexible(flex: 1,
                child: SelectableText.rich(TextSpan(children: [
                  TextSpan(text: translationExtract.translatedText[index])
                ])),),
            ],
          )
        ]);
  }
}
