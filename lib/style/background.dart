

import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  const MainBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(
        vertical: 60,
        horizontal: 20,
      ),
      child: child,
    );
  }
}
