import 'package:flutter/material.dart';

class BTSidebar extends StatelessWidget {
  final List<Widget> children;
  final double? elevation;

  const BTSidebar({
    Key? key,
    required this.children,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: elevation ?? 2,
      width: 268,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }
}
