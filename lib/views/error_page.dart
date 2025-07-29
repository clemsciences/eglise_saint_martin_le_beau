import 'package:eglise_saint_martin_le_beau/routes/router_extension.dart';
import 'package:eglise_saint_martin_le_beau/routes/saint_martin_le_beau_routes.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        context.pop();
      },
      child: MainSaintMartinScaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Erreur',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Vous avez été mené vers une page qui n'existe pas. Retournez à l'accueil pour continuer.",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
              ElevatedButton(
                onPressed: () {
                  context.goPush(SaintMartinLeBeauRoutes.main);
                },
                child: Text("Accueil"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
