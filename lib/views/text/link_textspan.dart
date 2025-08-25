import 'package:eglise_saint_martin_le_beau/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextSpan extends TextSpan {
  final String urlText;
  final String url;
  final TextStyle? linkStyle;

  LinkTextSpan({required this.url, required this.urlText, this.linkStyle = SatStyle.textLinkStyle})
    : super(
        text: urlText,
        style: linkStyle,
        recognizer: TapGestureRecognizer()
          ..onTap = () async {
            launchUrl(Uri.parse(url));
          },
        mouseCursor: SystemMouseCursors.click,
      );
}
