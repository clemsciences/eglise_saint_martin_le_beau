import 'package:eglise_saint_martin_le_beau/models/source_extract.dart';
import 'package:eglise_saint_martin_le_beau/views/items/source_entity_item_view.dart';
import 'package:eglise_saint_martin_le_beau/views/text/link_textspan.dart';
import 'package:flutter/material.dart';

class SourceExtractItemView extends StatelessWidget {
  const SourceExtractItemView({super.key, required this.source});

  final SourceBookExtract source;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SourceEntityItemView(source: source.source),
          SelectableText.rich(
            TextSpan(text: "page ${source.page}"),
          ),
          if (source.url != null)
            SelectableText.rich(
              LinkTextSpan(url: source.url!, urlText: source.url!),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.normal),
            ),
        ],
      ),
    );
  }
}
