import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      decoration: BoxDecoration(
        color: footerBackground ??
            (Get.isDarkMode ? BTColors.gray800 : BTColors.light),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(6),
          bottomRight: Radius.circular(6),
        ),
      ),
      width: double.infinity,
      child: footer!,
    );
  }
}
