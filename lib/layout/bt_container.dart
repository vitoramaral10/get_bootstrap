part of '../get_bootstrap.dart';

// ignore: use_late_for_private_fields_and_variables
/// Os contêineres são um bloco de construção fundamental do Bootstrap
/// que contém, preenche e alinha seu conteúdo em um determinado
/// dispositivo ou viewport.
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
    required this.child,
    super.key,
    this.sm = false,
    this.md = false,
    this.lg = false,
    this.xl = false,
    this.xxl = false,
    this.fluid = false,
    this.margin,
  });

  double _currentWidth(final buildContext) {
    final double width = MediaQuery.of(buildContext).size.width;

    if ((sm || md || lg || xl || xxl) && width >= 1400) {
      return 1320;
    } else if ((sm || md || lg || xl) && width >= 1200) {
      return 1140;
    } else if ((sm || md || lg) && width >= 992) {
      return 960;
    } else if ((sm || md) && width >= 768) {
      return 720;
    } else if (sm && width >= 576) {
      return 540;
    } else {
      return width;
    }
  }

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final buildContext, final boxConstraints) => Center(
          child: Container(
            width: _currentWidth(buildContext),
            margin: margin,
            child: child,
          ),
        ),
      );
}
