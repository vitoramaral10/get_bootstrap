part of '../../get_bootstrap.dart';

class BTButtonOutline extends StatelessWidget {
  static bool checkSizes(final Size? size) {
    if (size != null && ![Size.sm, Size.lg, Size.md].contains(size)) {
      throw Exception('O parâmetro "size" somente pode ser '
          'utilizado com os tamanhos: sm, md, lg');
    }

    return true;
  }

  final Widget child;
  final Size size;
  final bool square;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  double get heightButton => size == Size.lg
      ? 54
      : size == Size.sm
          ? 29
          : 40;

  double? widthButton() {
    if (!square) {
      return null;
    } else {
      if (size case Size.sm) {
        return 31;
      } else if (size case Size.lg) {
        return 48;
      } else {
        return 38;
      }
    }
  }

  BTButtonOutline({
    required this.child,
    super.key,
    this.size = Size.md,
    this.square = false,
    this.onPressed,
    this.backgroundColor,
  }) : assert(
            BTButton.checkSizes(size),
            'O parâmetro "size" somente pode ser utilizado '
            'com os tamanhos: sm, md, lg');

  @override
  Widget build(final BuildContext context) {
    const roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );

    return SizedBox(
      width: widthButton(),
      height: heightButton,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith(
            (final states) => GetBootstrap.typography.button!.copyWith(
              color: (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(
            backgroundColor ?? BTColors.primary,
          ),
          overlayColor: MaterialStateProperty.all(
            (backgroundColor ?? BTColors.primary)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          elevation: MaterialStateProperty.all(0),
          padding: !square ? null : MaterialStateProperty.all(EdgeInsets.zero),
          side: MaterialStateProperty.all(
            BorderSide(
              color: (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.0),
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            roundedRectangleBorder,
          ),
        ),
        child: child,
      ),
    );
  }
}
