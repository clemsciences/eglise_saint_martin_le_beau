import 'package:eglise_saint_martin_le_beau/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextSpan extends TextSpan {
  final String urlText;
  final String url;

  LinkTextSpan({required this.url, required this.urlText})
    : super(
        text: urlText,
        style: SatStyle.textLinkStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = () async {
            launchUrl(Uri.parse(url));
          },
        mouseCursor: SystemMouseCursors.click,
      );
}
