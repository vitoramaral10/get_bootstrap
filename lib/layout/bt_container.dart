import 'package:flutter/material.dart';

class BTContainer extends StatelessWidget {
  final Widget child;

  final bool sm;
  final bool md;
  final bool lg;
  final bool xl;
  final bool xxl;
  final bool fluid;
  final EdgeInsetsGeometry? margin;

  const BTContainer({
    super.key,
    required this.child,
    this.sm = false,
    this.md = false,
    this.lg = false,
    this.xl = false,
    this.xxl = false,
    this.fluid = false,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) {
        return Center(
          child: Container(
            margin: margin,
            width: _currentWidth(buildContext, boxConstraints),
            child: child,
          ),
        );
      },
    );
  }

  double _currentWidth(buildContext, boxConstraints) {
    double width = MediaQuery.of(buildContext).size.width;

    if ((sm || md || lg || xl || xxl) && width >= 1400) {
      return 1320;
    } else if ((sm || md || lg || xl) && width >= 1200) {
      return 1140;
    } else if ((sm || md || lg) && width >= 992) {
      return 960;
    } else if ((sm || md) && width >= 768) {
      return 720;
    } else if ((sm) && width >= 576) {
      return 540;
    } else {
      return width;
    }
  }
}
