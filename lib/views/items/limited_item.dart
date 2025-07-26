import 'package:flutter/material.dart';

class LimitedItem extends StatelessWidget {
  const LimitedItem({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.of(context).size.width * 0.8, // 80% of screen width
        ),
        child: child,
      ),
    );
  }
}
