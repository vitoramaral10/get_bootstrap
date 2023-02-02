part of get_bootstrap;

class BTButtonOutline extends StatelessWidget {
  final Widget child;
  final Size? size;
  final bool square;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  double get heightButton => size == Size.lg
      ? 54
      : size == Size.sm
          ? 29
          : 40;
  double? get widthButton => !square
      ? null
      : size == Size.lg
          ? 48
          : size == Size.sm
              ? 31
              : 38;

  const BTButtonOutline({
    super.key,
    required this.child,
    this.size,
    this.square = false,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    const roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    );

    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) {
            return GetBootstrap.typography.button!.copyWith(
              color: (backgroundColor ?? BTColors.primary)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            );
          }),
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
          side: MaterialStateProperty.all(BorderSide(
            color: (backgroundColor ?? BTColors.primary)
                .withOpacity(onPressed != null ? 1 : 0.0),
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            roundedRectangleBorder,
          ),
        ),
        child: child,
      ),
    );
  }
}
