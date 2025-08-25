import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/style/style.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:eglise_saint_martin_le_beau/views/text/link_textspan.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => PopScope(
          canPop: Scaffold.of(context).isEndDrawerOpen,
          onPopInvokedWithResult: (canPop, result) {
            if (Scaffold.of(context).isEndDrawerOpen) {
              Scaffold.of(context).closeEndDrawer();
            }
            // If the drawer was open, PopScope's canPop was false,
            // so we need to manually pop if it's now closed.
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MainBackground(
                  child: Column(
                    children: [
                      SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: "Découvrez\n"),
                            TextSpan(
                              text: "l'église de Saint-Martin-le-Beau\n",
                              style: Theme.of(context).textTheme.headlineLarge!
                                  .copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onPrimary,
                                  ),
                            ),
                            TextSpan(text: " pour "),
                            TextSpan(
                              text:
                                  "les Journées Européennes du Patrimoine 2025",
                              style: SatStyle.textLinkStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  launchUrl(
                                    Uri.parse(
                                      "https://journeesdupatrimoine.culture.gouv.fr/actualites/a-la-rencontre-du-patrimoine-architectural",
                                    ),
                                  );
                                },
                              mouseCursor: SystemMouseCursors.click,
                            ),
                          ],
                        ),
                        style: Theme.of(context).textTheme.headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        SelectableText.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Deux événements auront lieu à l'église de Saint-martin-le-Beau. Il y a\n\u2022\u00a0",
                              ),
                              LinkTextSpan(
                                url:
                                    "https://journeesdupatrimoine.culture.gouv.fr/w/369139/evenement/18662169/exposition-artistique-cueillir-celebrer-creer",
                                urlText:
                                    "L'exposition artistique \"Cueillir, célébrer, créer\"",
                              ),
                              TextSpan(text: ", \n\u2022\u00a0"),
                              LinkTextSpan(
                                url:
                                    "https://journeesdupatrimoine.culture.gouv.fr/w/369139/evenement/18658857/visites-commentees#/events/18658857",
                                urlText: "Les visites commentées de l'église",
                              ),
                              TextSpan(text: "."),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Container(
                //   color: Colors.white,
                //   padding: const EdgeInsets.all(40.0),
                //   child: Column(
                //     children: [
                //       Text(
                //         "",
                //         style: Theme.of(context).textTheme.headlineSmall
                //             ?.copyWith(color: Colors.black87),
                //       ),
                //       const SizedBox(height: 20),
                //       Text(
                //         "Nous sommes la Société archéologique de Touraine, une société savante fondée en 1840 qui promeut la préservation du patrimoine locale et encourage les recherches sur l'Histoire de la Touraine.",
                //         textAlign: TextAlign.center,
                //         style: Theme.of(
                //           context,
                //         ).textTheme.bodyMedium?.copyWith(color: Colors.black87),
                //       ),
                //       const SizedBox(height: 20),
                //       ElevatedButton(
                //         onPressed: () {
                //           launchUrl(
                //             Uri.parse("https://societearcheotouraine.eu/"),
                //           );
                //         },
                //         style: ButtonStyle(
                //           backgroundColor: MaterialStateProperty.all<Color>(
                //             SatStyle.lightBlueColor,
                //           ),
                //         ),
                //         child: const Text(
                //           'Visiter le site internet',
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
