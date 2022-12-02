import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../get_bootstrap.dart';

class Head extends StatelessWidget {
  const Head({
    Key? key,
    required this.headPadding,
    required this.headBackground,
    required this.head,
  }) : super(key: key);

  final EdgeInsetsGeometry? headPadding;
  final Color? headBackground;
  final Widget? head;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: headPadding ?? const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: headBackground ??
            (Get.isDarkMode ? BTColors.gray800 : BTColors.light),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      width: double.infinity,
      child: head!,
    );
  }
}
