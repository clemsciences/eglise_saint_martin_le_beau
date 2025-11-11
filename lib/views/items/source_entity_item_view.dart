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
      elevation: 2,
      shadowColor: SatStyle.redColor.withOpacity(0.6),
      color: SatStyle.redColor.withAlpha(100),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: SatStyle.redColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: source.officialDescription != null
            ? _buildOfficialDescription(context)
            : _buildDetailedSource(context),
      ),
    );
  }

  Widget _buildOfficialDescription(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icône et type de source
        Row(
          children: [
            Icon(
              Icons.library_books,
              color: Colors.white70,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              'Source officielle',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.white70,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Description
        SelectableText(
          source.officialDescription!,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.white,
            height: 1.5,
          ),
        ),

        // URL si disponible
        if (source.url != null) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.link,
                  color: Colors.white70,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectableText.rich(
                    LinkTextSpan(
                      url: source.url!,
                      urlText: source.url!,
                      linkStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildDetailedSource(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Titre
        SelectableText(
          source.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Description si disponible
        if (source.description != null && source.description!.isNotEmpty) ...[
          const SizedBox(height: 12),
          SelectableText(
            source.description!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white70,
              fontStyle: FontStyle.italic,
              height: 1.4,
            ),
          ),
        ],

        const SizedBox(height: 12),

        // Métadonnées
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            // Auteurs
            if (source.authors.isNotEmpty)
              _buildMetadataChip(
                context,
                icon: Icons.person,
                label: source.authors.map((a) => a.toString()).join(', '),
              ),

            // Année
            if (source.timestamp != null)
              _buildMetadataChip(
                context,
                icon: Icons.calendar_today,
                label: '${source.timestamp!.year}',
              ),

            // Éditeur
            if (source.publisher != null && source.publisher!.isNotEmpty)
              _buildMetadataChip(
                context,
                icon: Icons.business,
                label: source.publisher!,
              ),

            // Année de publication
            if (source.publicationYear != null && source.publicationYear!.isNotEmpty)
              _buildMetadataChip(
                context,
                icon: Icons.date_range,
                label: source.publicationYear!,
              ),
          ],
        ),

        // URL
        if (source.url != null) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.link,
                  color: Colors.white70,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: SelectableText(
                    source.url!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildMetadataChip(BuildContext context, {required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: Colors.white70,
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}