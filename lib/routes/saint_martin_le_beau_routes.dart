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
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: MainPage());
      },
      // builder: (context, state) => MainPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchTimeline,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: ChurchTimeline());
      },
      // builder: (context, state) => ChurchTimeline(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchVocabulary,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: ChurchVocabularyPage());
      },
      // builder: (context, state) => ChurchVocabularyPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.nameOrigin,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: NameOriginPage());
      },
      // builder: (context, state) => NameOriginPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchItems,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: ChurchItemsPage());
      },
      // builder: (context, state) => ChurchItemsPage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.sources,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: SourcePage());
      },
      // builder: (context, state) => SourcePage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.about,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: MorePage());
      },
      // builder: (context, state) => MorePage(),
    ),
    GoRoute(
      path: SaintMartinLeBeauRoutes.churchViewer,
      pageBuilder: (context, state) {
        return SatAnimation1(key: state.pageKey, child: ChurchViewer());
      },
      // builder: (context, state) => ChurchViewer(),
    ),
  ],
);
