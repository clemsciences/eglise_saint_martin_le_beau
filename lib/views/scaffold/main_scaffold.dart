import 'package:eglise_saint_martin_le_beau/models/scaffold_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/saint_martin_le_beau_routes.dart';

class MainSaintMartinScaffold extends StatelessWidget {
  final Widget body;

  MainSaintMartinScaffold({super.key, required this.body});

  final List<ScaffoldItem> _items = [
    ScaffoldItem(
      label: "Accueil",
      path: SaintMartinLeBeauRoutes.main,
      children: null,
    ),
    ScaffoldItem(
      label: "Origine",
      path: SaintMartinLeBeauRoutes.nameOrigin,
      children: null,
    ),
    ScaffoldItem(
      label: "Eglise",
      path: SaintMartinLeBeauRoutes.main,
      children: [
        ScaffoldItem(
          label: "Images de l'église",
          path: SaintMartinLeBeauRoutes.churchViewer,
          children: null,
        ),
        ScaffoldItem(
          label: "Chronologie de l'église",
          path: SaintMartinLeBeauRoutes.churchTimeline,
          children: null,
        ),
        ScaffoldItem(
          label: "Mobilier",
          path: SaintMartinLeBeauRoutes.churchItems,
          children: null,
        ),
        ScaffoldItem(
          label: "Vocabulaire",
          path: SaintMartinLeBeauRoutes.churchVocabulary,
          children: null,
        ),
      ],
    ),
    ScaffoldItem(
      label: "Sources",
      path: SaintMartinLeBeauRoutes.sources,
      children: null,
    ),
    ScaffoldItem(
      label: "A propos",
      path: SaintMartinLeBeauRoutes.about,
      children: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800; // Adjust breakpoint as needed

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (c, constraints) => PopScope(
            canPop: Scaffold.of(c).isEndDrawerOpen,
            onPopInvokedWithResult: (canPop, result) {
              if (Scaffold.of(c).isEndDrawerOpen) {
                Scaffold.of(c).closeEndDrawer();
              } else {
                // Pop page only if the page is not the last one in the route history
                if (context.canPop()) {
                  context.pop();
                }
              }
              // If the drawer was open, PopScope's canPop was false,
              // so we need to manually pop if it's now closed.
            },

            child: body,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomSheet: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withOpacity(0.2),
                ),
              ),
              child: SafeArea(
                child: Text(
                  '© 2025 La Société archéologique de Touraine. Tous droits réservés.',
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'JEP 2025',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          if (isSmallScreen)
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          if (!isSmallScreen) ..._buildMenuAnchor(context, _items),
        ],
      ),
      endDrawer: isSmallScreen ? _makeDrawer(context) : null,
    );
  }

  Widget _makeDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text(
              'Journées européennes du patrimoine 2025 du 20 au 21 septembre',
            ),
          ),
          ..._buildDrawerList(context, _items),
          /*ListTile(
            title: const Text('Accueil'),
            onTap: () => context.push(SaintMartinLeBeauRoutes.main),
          ),
          ListTile(
            title: const Text("Origine de Saint-Martin-le-Beau"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.nameOrigin),
          ),
          ListTile(
            title: Text("Images de l'église"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.churchViewer),
          ),
          ListTile(
            title: const Text('Frise chronologique de la basilique'),
            onTap: () => context.push(SaintMartinLeBeauRoutes.churchTimeline),
          ),
          ListTile(
            title: const Text("Mobilier"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.churchItems),
          ),
          ListTile(
            title: const Text("Mobilier"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.churchVocabulary),
          ),
          ListTile(
            title: const Text("Sources"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.sources),
          ),
          ListTile(
            title: Text("A propos"),
            onTap: () => context.push(SaintMartinLeBeauRoutes.about),
          ),*/
        ],
      ),
    );
  }

  List<Widget> _makeActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.main);
        },
        child: const Text('Accueil'),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.nameOrigin);
        },
        child: const Text("Origine de Saint-Martin-le-Beau"),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.churchViewer);
        },
        child: Text("Images de l'église"),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.churchTimeline);
        },
        child: const Text("Chronologie de l'église"),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.churchVocabulary);
        },
        child: const Text('Vocabulaire des églises'),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.sources);
        },
        child: Text("Sources"),
      ),
      TextButton(
        onPressed: () {
          context.push(SaintMartinLeBeauRoutes.about);
        },
        child: Text("A propos"),
      ),
    ];
  }

  List<MenuAnchor> _buildMenuAnchor(
    BuildContext context,
    List<ScaffoldItem> items,
  ) {
    return items
        .map(
          (ScaffoldItem item) => MenuAnchor(
            builder: (context, controller, child) => TextButton(
              onPressed: () {
                if (item.children != null) {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                } else {
                  context.push(item.path);
                }
              },
              child: Text(item.label),
            ),
            menuChildren: item.children != null
                ? _buildMenuAnchor(context, item.children!)
                : [],
          ),
        )
        .toList();
  }

  List<Widget> _buildDrawerList(
    BuildContext context,
    List<ScaffoldItem> items,
  ) {
    return items.map((item) {
      if (item.hasChildren) {
        return ExpansionTile(
          title: Text(item.label),
          children: _buildDrawerList(context, item.children!),
        );
      } else {
        return ListTile(
          title: Text(item.label),
          onTap: () {
            context.push(item.path);
          },
        );
      }
    }).toList();
  }
}
