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
            MainBackground(
              child: Container(
                child: Column(
                  children: [
                    Center(
                      child: SelectableText(
                        "Sources",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            for(Source source in SourceData.data)
              if(source is SourceEntity)
                SourceEntityItemView(source: source)
              else if(source is SourceBookExtract)
                SourceExtractItemView(source: source),
          ],
        ),
      ),
    );
  }
}
