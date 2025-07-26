import 'package:eglise_saint_martin_le_beau/routes/saint_martin_le_beau_routes.dart';
import 'package:eglise_saint_martin_le_beau/style/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Eglise de Saint-Martin-le-Beau',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      routerConfig: saintMartinLeBeauRouter,
    );
  }
}