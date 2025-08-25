import 'package:eglise_saint_martin_le_beau/models/source_entity.dart';
import 'package:eglise_saint_martin_le_beau/style/style.dart';
import 'package:eglise_saint_martin_le_beau/views/text/link_textspan.dart';
import 'package:flutter/material.dart';

class SourceEntityItemView extends StatelessWidget {
  const SourceEntityItemView({super.key, required this.source});

  final SourceEntity source;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: SatStyle.redColor,
      color: SatStyle.redColor.withAlpha(50),
      child: source.officialDescription != null
          ? Container(
              padding: EdgeInsets.all(8),
              // decoration: BoxDecoration(
              //   color: SatStyle.redColor.withAlpha(100),
              //   borderRadius: BorderRadius.circular(4),
              // ),
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(text: source.officialDescription!),
                    if (source.url != null) TextSpan(text: "\n"),
                    if (source.url != null)
                      LinkTextSpan(
                        url: source.url!,
                        urlText: source.url!,
                        linkStyle: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                      ),
                  ],
                ),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            )
          : ListTile(
              subtitle: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(text: source.title),
                    if (source.authors.isNotEmpty) TextSpan(text: ", "),
                    if (source.authors.isNotEmpty)
                      TextSpan(
                        text: source.authors
                            .map((item) => item.toString())
                            .join(),
                      ),
                    if (source.timestamp != null)
                      TextSpan(text: "${source.timestamp!.year}"),

                    TextSpan(text: source.publisher),
                    TextSpan(text: " "),
                    TextSpan(text: source.publicationYear),
                    // TextSpan(text: source.),
                    if (source.url != null) TextSpan(text: ", "),
                    if (source.url != null) TextSpan(text: "${source.url}"),
                  ],
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
    );
  }
}
