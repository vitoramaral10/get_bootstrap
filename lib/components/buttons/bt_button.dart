part of get_bootstrap;

class BTButton extends StatelessWidget {
  final Widget child;
  final Size? size;
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
      switch (size) {
        case Size.sm:
          return 38;
        case Size.lg:
          return 58;
        default:
          return 48;
      }
    }
  }

  const BTButton({
    super.key,
    required this.child,
    this.size,
    this.square = false,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: widthButton(),
      height: heightButton,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) {
            return GetBootstrap.typography.button!.copyWith(
              color: (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            );
          }),
          backgroundColor: MaterialStateProperty.all(
            (backgroundColor ?? BTColors.primary)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          foregroundColor: MaterialStateProperty.all(
            (backgroundColor ?? BTColors.primary).computeLuminance() > 0.5
                ? BTColors.dark
                : BTColors.light,
          ),
          overlayColor: MaterialStateProperty.all(
            (backgroundColor ?? BTColors.primary)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          elevation: MaterialStateProperty.all(0),
          padding: !square ? null : MaterialStateProperty.all(EdgeInsets.zero),
          side: MaterialStateProperty.all(BorderSide(
            color: (backgroundColor ?? BTColors.primary)
                .withOpacity(onPressed != null ? 1 : 0.0),
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
