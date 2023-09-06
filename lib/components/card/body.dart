import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

class Body extends StatelessWidget {
  final EdgeInsetsGeometry? bodyPadding;
  final Widget? head;
  final Widget? footer;
  final Color? bodyBackground;
  final Widget body;
  final bool darkMode;

  const Body({
    required this.bodyPadding,
    required this.head,
    required this.footer,
    required this.bodyBackground,
    required this.body,
    super.key,
    this.darkMode = false,
  });

  @override
  Widget build(final BuildContext context) => Container(
        padding: bodyPadding ?? const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:
              bodyBackground ?? (darkMode ? BTColors.gray800 : BTColors.white),
          borderRadius: BorderRadius.only(
            topLeft: head == null ? const Radius.circular(6) : Radius.zero,
            topRight: head == null ? const Radius.circular(6) : Radius.zero,
            bottomLeft: footer == null ? const Radius.circular(6) : Radius.zero,
            bottomRight:
                footer == null ? const Radius.circular(6) : Radius.zero,
          ),
        ),
        width: double.infinity,
        child: body,
      );
}
