import 'package:eglise_saint_martin_le_beau/data/source_data.dart';
import 'package:eglise_saint_martin_le_beau/models/source.dart';
import 'package:eglise_saint_martin_le_beau/models/source_entity.dart';
import 'package:eglise_saint_martin_le_beau/models/source_extract.dart';
import 'package:eglise_saint_martin_le_beau/style/background.dart';
import 'package:eglise_saint_martin_le_beau/views/items/source_entity_item_view.dart';
import 'package:eglise_saint_martin_le_beau/views/items/source_extract_item_view.dart';
import 'package:eglise_saint_martin_le_beau/views/scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

class SourcePage extends StatelessWidget {
  const SourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainSaintMartinScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // En-tête
            const MainBackground(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SelectableText(
                        "Sources",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      SelectableText(
                        "Références documentaires",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 48),

            // Compteur de sources
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.library_books,
                      size: 20,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${SourceData.data.length} source${SourceData.data.length > 1 ? 's' : ''} référencée${SourceData.data.length > 1 ? 's' : ''}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Liste des sources - Avec contrainte de largeur max pour une meilleure lisibilité
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      // Responsive: grille sur grands écrans, liste sur petits écrans
                      if (constraints.maxWidth > 1000) {
                        return _buildGridLayout(context);
                      } else if (constraints.maxWidth > 700) {
                        return _buildTwoColumnLayout(context);
                      } else {
                        return _buildSingleColumnLayout(context);
                      }
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }

  // Layout pour grands écrans (3 colonnes)
  Widget _buildGridLayout(BuildContext context) {
    return Wrap(
      spacing: 24,
      runSpacing: 24,
      alignment: WrapAlignment.start,
      children: SourceData.data.map((source) {
        return SizedBox(
          width: (MediaQuery.of(context).size.width.clamp(0, 1200) - 80) / 3,
          child: _buildSourceWidget(source),
        );
      }).toList(),
    );
  }

  // Layout pour écrans moyens (2 colonnes)
  Widget _buildTwoColumnLayout(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.start,
      children: SourceData.data.map((source) {
        return SizedBox(
          width: (MediaQuery.of(context).size.width - 56) / 2,
          child: _buildSourceWidget(source),
        );
      }).toList(),
    );
  }

  // Layout pour petits écrans (1 colonne)
  Widget _buildSingleColumnLayout(BuildContext context) {
    return Column(
      children: SourceData.data.map((source) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: _buildSourceWidget(source),
        );
      }).toList(),
    );
  }

  // Widget pour afficher une source selon son type
  Widget _buildSourceWidget(dynamic source) {
    if (source is SourceEntity) {
      return SourceEntityItemView(source: source);
    } else if (source is SourceBookExtract) {
      return SourceExtractItemView(source: source);
    }
    return const SizedBox.shrink();
  }
}