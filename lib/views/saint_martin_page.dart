import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class SaintMartinPage extends StatelessWidget {
  const SaintMartinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          MainBackground(child: Container(
            child: Column(
              children: [
                Center(
                  child: SelectableText("Saint Martin",
                    style: Theme.of(context).textTheme.headlineLarge,),

                )
              ],
            ),
          )),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SelectableText.rich(TextSpan(
                  children: [
                    
                  ]
                ))

              ],
            ),
          )
        ],
      ),
    ));
  }
}
