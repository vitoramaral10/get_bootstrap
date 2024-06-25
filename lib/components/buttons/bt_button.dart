part of '../../get_bootstrap.dart';

class BTButton extends StatelessWidget {
  static bool checkSizes(final Size size) {
    if (![Size.sm, Size.lg, Size.md].contains(size)) {
      throw Exception();
    }

    return true;
  }

  final Widget child;
  final Size size;
  final bool square;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  double get heightButton => size == Size.lg
      ? 58
      : size == Size.sm
          ? 38
          : 48;

  double? widthButton() {
    if (!square) {
      return null;
    } else {
      if (size case Size.sm) {
        return 38;
      } else if (size case Size.lg) {
        return 58;
      } else {
        return 48;
      }
    }
  }

  BTButton({
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
  Widget build(final BuildContext context) => Container(
        padding: const EdgeInsets.all(4),
        width: widthButton(),
        height: heightButton,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            textStyle: WidgetStateProperty.resolveWith(
              (final states) => GetBootstrap.typography.button!.copyWith(
                color: (backgroundColor ?? BTColors.primary)
                    .withOpacity(onPressed != null ? 1 : 0.65),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
              (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            ),
            foregroundColor: WidgetStateProperty.all(
              (backgroundColor ?? BTColors.primary).computeLuminance() > 0.5
                  ? BTColors.dark
                  : BTColors.light,
            ),
            overlayColor: WidgetStateProperty.all(
              (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            ),
            elevation: WidgetStateProperty.all(0),
            padding:
                !square ? null : WidgetStateProperty.all(EdgeInsets.zero),
            side: WidgetStateProperty.all(
              BorderSide(
                color: (backgroundColor ?? BTColors.primary)
                    .withOpacity(onPressed != null ? 1 : 0.0),
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
            ),
          ),
          child: child,
        ),
      );
}
