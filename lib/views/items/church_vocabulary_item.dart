import 'package:eglise_saint_martin_le_beau/models/church_word_entry.dart';
import 'package:eglise_saint_martin_le_beau/views/items/limited_item.dart';
import 'package:flutter/material.dart';

class ChurchVocabularyItem extends StatelessWidget {
  const ChurchVocabularyItem({super.key, required this.entry});

  final ChurchWordEntry entry;

  @override
  Widget build(BuildContext context) {
    return LimitedItem(
      child: Card(
        child: ListTile(
          title: SelectableText.rich(
            TextSpan(
              text: entry.word,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: SelectableText.rich(TextSpan(text: entry.definition)),
        ),
      ),
    );
  }
}
