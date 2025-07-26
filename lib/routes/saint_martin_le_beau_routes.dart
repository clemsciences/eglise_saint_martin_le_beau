import 'package:eglise_saint_martin_le_beau/routes/routes.dart';
import 'package:eglise_saint_martin_le_beau/views/church_items_page.dart';
import 'package:eglise_saint_martin_le_beau/views/church_timeline.dart';
import 'package:eglise_saint_martin_le_beau/views/church_viewer.dart';
import 'package:eglise_saint_martin_le_beau/views/church_vocabulary.dart';
import 'package:eglise_saint_martin_le_beau/views/error_page.dart';
import 'package:eglise_saint_martin_le_beau/views/main_page.dart';
import 'package:eglise_saint_martin_le_beau/views/more_page.dart';
import 'package:eglise_saint_martin_le_beau/views/name_origin_page.dart';
import 'package:eglise_saint_martin_le_beau/views/source_page.dart';
import 'package:go_router/go_router.dart';

class SaintMartinLeBeauRoutes extends AppRoutes {
  static const String main = "/";
  static const String churchTimeline = "/frise-chronologique";
  static const String churchVocabulary = "/vocabulaire-eglise";
  static const String nameOrigin = "/origine";
  static const String churchItems = "/eglise";
  static const String sources = "/sources";
  static const String about = "/a-propos";
  static const String churchViewer = "/eglise/panorama";
}

final GoRouter saintMartinLeBeauRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: SaintMartinLeBeauRoutes.main,
  errorBuilder: (context, state) => ErrorPage(),
  routes: [
    GoRoute(
      path: SaintMartinLeBeauRoutes.main,
      builder: (context, state) => MainPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchTimeline,
      builder: (context, state) => ChurchTimeline(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchVocabulary,
      builder: (context, state) => ChurchVocabularyPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.nameOrigin,
      builder: (context, state) => NameOriginPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchItems,
      builder: (context, state) => ChurchItemsPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.sources,
      builder: (context, state) => SourcePage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.about,
      builder: (context, state) => MorePage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchViewer,
      builder: (context, state) => ChurchViewer(),
    ),
  ],
);
