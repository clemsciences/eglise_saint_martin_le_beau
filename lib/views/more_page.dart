import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/items/limited_item.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:eglise_saint_martin_le_beau/views/text/link_textspan.dart';
import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: MainBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SelectableText(
                      "Participants",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: 40),
                    LimitedItem(
                      child: Card(
                        child: ListTile(
                          title: SelectableText(""),

                          subtitle: SelectableText(""),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    LimitedItem(
                      child: Card(
                        child: ListTile(
                          title: SelectableText(""),

                          subtitle: SelectableText(""),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    LimitedItem(
                      child: Card(
                        child: ListTile(
                          title: SelectableText("Clément Besnier"),
                          subtitle: SelectableText(""),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SelectableText(
                      "Développement",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SelectableText.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Le code est accessible à tous sur "),
                          LinkTextSpan(
                            url:
                                "https://github.com/clemsciences/eglise_saint_martin_le_beau",
                            urlText:
                                "https://github.com/clemsciences/eglise_saint_martin_le_beau",
                          ),
                          TextSpan(text: ".")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
