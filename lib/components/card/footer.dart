import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

/// A widget that represents the footer of a card.
class Footer extends StatelessWidget {
  final EdgeInsetsGeometry? footerPadding;
  final Color? footerBackground;
  final Widget? footer;
  final bool darkMode;

  /// Creates a [Footer] widget.
  ///
  /// The [footerPadding] parameter specifies the padding around the footer.
  /// The [footerBackground] parameter specifies the background color of the footer.
  /// The [footer] parameter specifies the content of the footer.
  /// The [darkMode] parameter specifies whether to use dark mode or not.
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
