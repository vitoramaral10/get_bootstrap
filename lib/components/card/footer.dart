import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.footerPadding,
    required this.footerBackground,
    required this.footer,
  }) : super(key: key);

  final EdgeInsetsGeometry? footerPadding;
  final Color? footerBackground;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: footerPadding ?? const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: footerBackground ?? BTColors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
      ),
      child: footer!,
    );
  }
}
