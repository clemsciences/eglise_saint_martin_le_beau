import 'package:eglise_saint_martin_le_beau/models/source_translation.dart';
import 'package:flutter/material.dart';
import 'package:eglise_saint_martin_le_beau/models/source_translation.dart';
import 'package:flutter/material.dart';

enum TranslationDisplayMode {
  sideBySide,     // Latin | Français (colonnes)
  latinOnly,      // Latin uniquement
  frenchOnly,     // Français uniquement
  stacked,        // Latin puis Français (empilé)
}

class TranslationWidget extends StatefulWidget {
  const TranslationWidget({super.key, required this.translationExtract});
  final SourceTranslationExtract translationExtract;

  @override
  State<TranslationWidget> createState() => _TranslationWidgetState();
}

class _TranslationWidgetState extends State<TranslationWidget> {
  TranslationDisplayMode _displayMode = TranslationDisplayMode.sideBySide;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Barre de contrôle
        _buildControlBar(),
        const SizedBox(height: 16),
        // Contenu principal
        _buildContent(),
      ],
    );
  }

  Widget _buildControlBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Sélection du mode d'affichage
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: [
              _buildModeButton(
                'Latin | Français',
                TranslationDisplayMode.sideBySide,
                Icons.view_column,
              ),
              _buildModeButton(
                'Latin seul',
                TranslationDisplayMode.latinOnly,
                Icons.format_quote,
              ),
              _buildModeButton(
                'Français seul',
                TranslationDisplayMode.frenchOnly,
                Icons.translate,
              ),
              _buildModeButton(
                'Empilé',
                TranslationDisplayMode.stacked,
                Icons.view_agenda,
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Contrôle de la taille du texte
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Taille du texte: '),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _fontSize > 10
                    ? () => setState(() => _fontSize -= 2)
                    : null,
              ),
              SizedBox(
                width: 60,
                child: Text(
                  '${_fontSize.toInt()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _fontSize < 32
                    ? () => setState(() => _fontSize += 2)
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildModeButton(String label, TranslationDisplayMode mode, IconData icon) {
    final isSelected = _displayMode == mode;
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label),
      onPressed: () => setState(() => _displayMode = mode),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.white,
        foregroundColor: isSelected ? Colors.white : Colors.black87,
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: _buildContentByMode(),
    );
  }

  Widget _buildContentByMode() {
    switch (_displayMode) {
      case TranslationDisplayMode.sideBySide:
        return _buildSideBySideView();
      case TranslationDisplayMode.latinOnly:
        return _buildSingleLanguageView(isLatin: true);
      case TranslationDisplayMode.frenchOnly:
        return _buildSingleLanguageView(isLatin: false);
      case TranslationDisplayMode.stacked:
        return _buildStackedView();
    }
  }

  Widget _buildSideBySideView() {
    return Table(
      border: TableBorder.all(color: Colors.grey[300]!),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(1),
      },
      children: [
        // En-tête
        TableRow(
          decoration: BoxDecoration(color: Colors.grey[100]),
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Latin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _fontSize + 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Français',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _fontSize + 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        // Lignes de contenu
        for (var i = 0; i < widget.translationExtract.originText.length; i++)
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: SelectableText(
                  widget.translationExtract.originText[i],
                  style: TextStyle(
                    fontSize: _fontSize,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: SelectableText(
                  widget.translationExtract.translatedText[i],
                  style: TextStyle(fontSize: _fontSize),
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildSingleLanguageView({required bool isLatin}) {
    final texts = isLatin
        ? widget.translationExtract.originText
        : widget.translationExtract.translatedText;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < texts.length; i++) ...[
          SelectableText(
            texts[i],
            style: TextStyle(
              fontSize: _fontSize,
              fontStyle: isLatin ? FontStyle.italic : FontStyle.normal,
              height: 1.6,
            ),
          ),
          if (i < texts.length - 1) const SizedBox(height: 16),
        ],
      ],
    );
  }

  Widget _buildStackedView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < widget.translationExtract.originText.length; i++) ...[
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Texte latin
                SelectableText(
                  widget.translationExtract.originText[i],
                  style: TextStyle(
                    fontSize: _fontSize,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 12),
                Divider(color: Colors.grey[400]),
                const SizedBox(height: 12),
                // Texte français
                SelectableText(
                  widget.translationExtract.translatedText[i],
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: Colors.black,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
          if (i < widget.translationExtract.originText.length - 1)
            const SizedBox(height: 16),
        ],
      ],
    );
  }
}