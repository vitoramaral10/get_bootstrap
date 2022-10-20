import 'package:flutter/material.dart';

class BTSidebarHeader extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const BTSidebarHeader({
    super.key,
    required this.child,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: 56,
      width: double.infinity,
      child: child,
    );
  }
}
