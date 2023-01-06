part of get_bootstrap;

class BTButton extends StatelessWidget {
  final Widget child;
  final bool? lg;
  final bool? sm;
  final bool square;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  double get heightButton => lg == true
      ? 58
      : sm == true
          ? 38
          : 48;
  double? get widthButton => !square
      ? null
      : lg == true
          ? 58
          : sm == true
              ? 38
              : 48;

  const BTButton({
    super.key,
    required this.child,
    this.lg,
    this.sm,
    this.square = false,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: widthButton,
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
