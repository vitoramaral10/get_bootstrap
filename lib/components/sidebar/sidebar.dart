import 'package:flutter/material.dart';

class BTSidebar extends StatelessWidget {
  final List<Widget> children;

  const BTSidebar({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 268,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
