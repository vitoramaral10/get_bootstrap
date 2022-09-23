import 'package:flutter/material.dart';

class BTContainerFluid extends StatelessWidget {
  final Widget child;
  const BTContainerFluid({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: child,
      ),
    );
  }
}
