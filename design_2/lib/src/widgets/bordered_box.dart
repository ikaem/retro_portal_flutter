import 'package:flutter/material.dart';

class BorderedBox extends StatelessWidget {
  const BorderedBox({
    Key? key,
    this.backgroundColor = Colors.white,
    this.borderRadius = 50,
    this.shadow,
    required this.child,
  }) : super(key: key);

  final Color backgroundColor;
  final double borderRadius;
  final Widget child;
  final BoxShadow? shadow;

  @override
  Widget build(BuildContext context) {
    final boxShadow = shadow;
    return Container(
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: boxShadow != null ? [boxShadow] : null,
      ),
      child: child,
    );
  }
}
