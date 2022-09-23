import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final double elevation;
  final EdgeInsets padding;
  final Widget child;
  final Color? backgroundColor;
  const Navbar({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      child: Container(
        padding: padding,
        color: backgroundColor,
        child: child,
      ),
    );
  }
}
