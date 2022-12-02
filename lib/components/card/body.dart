import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../get_bootstrap.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.bodyPadding,
    required this.head,
    required this.footer,
    required this.bodyBackground,
    required this.body,
  }) : super(key: key);

  final EdgeInsetsGeometry? bodyPadding;
  final Widget? head;
  final Widget? footer;
  final Color? bodyBackground;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: bodyPadding ?? const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: bodyBackground ??
            (Get.isDarkMode ? BTColors.gray800 : BTColors.light),
        borderRadius: BorderRadius.only(
          topLeft: head == null ? const Radius.circular(6) : Radius.zero,
          topRight: head == null ? const Radius.circular(6) : Radius.zero,
          bottomLeft: footer == null ? const Radius.circular(6) : Radius.zero,
          bottomRight: footer == null ? const Radius.circular(6) : Radius.zero,
        ),
      ),
      width: double.infinity,
      child: body,
    );
  }
}
