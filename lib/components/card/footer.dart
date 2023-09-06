import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

class Footer extends StatelessWidget {
  final EdgeInsetsGeometry? footerPadding;
  final Color? footerBackground;
  final Widget? footer;
  final bool darkMode;

  const Footer({
    required this.footerPadding,
    required this.footerBackground,
    required this.footer,
    super.key,
    this.darkMode = false,
  });

  @override
  Widget build(final BuildContext context) => Container(
        padding: footerPadding ?? const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: footerBackground ??
              (darkMode ? BTColors.gray800 : BTColors.white),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
        ),
        width: double.infinity,
        child: footer,
      );
}
