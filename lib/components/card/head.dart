import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

class Head extends StatelessWidget {
  final EdgeInsetsGeometry? headPadding;
  final Color? headBackground;
  final Widget? head;
  final Widget? body;
  final Widget? footer;
  final bool darkMode;

  const Head({
    Key? key,
    required this.headPadding,
    required this.headBackground,
    required this.head,
    required this.body,
    required this.footer,
    this.darkMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: headPadding ?? const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: headBackground ?? (darkMode ? BTColors.gray800 : BTColors.white),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(6),
          topRight: const Radius.circular(6),
          bottomLeft: (body == null || footer == null)
              ? const Radius.circular(6)
              : Radius.zero,
          bottomRight: (body == null || footer == null)
              ? const Radius.circular(6)
              : Radius.zero,
        ),
      ),
      width: double.infinity,
      child: head!,
    );
  }
}
