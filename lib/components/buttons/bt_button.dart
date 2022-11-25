part of get_bootstrap;

class BTButton extends StatelessWidget {
  final Widget child;
  final bool? lg;
  final bool? sm;
  final bool square;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  double get heightButton => lg == true
      ? 54
      : sm == true
          ? 29
          : 40;
  double? get widthButton => !square
      ? null
      : lg == true
          ? 48
          : sm == true
              ? 31
              : 38;

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
    return SizedBox(
      height: heightButton,
      width: widthButton,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
          ),
          padding: !square ? null : MaterialStateProperty.all(EdgeInsets.zero),
          side: MaterialStateProperty.all(BorderSide(
            color: (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.0),
          )),
          backgroundColor: MaterialStateProperty.all(
            (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          foregroundColor: MaterialStateProperty.all(
            (backgroundColor ?? Theme.of(context).primaryColor)
                        .computeLuminance() >
                    0.5
                ? BTColors.dark
                : BTColors.light,
          ),
          overlayColor: MaterialStateProperty.all(
            (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return GetBootstrap.typography.button!.copyWith(
              color: (backgroundColor ?? Theme.of(context).primaryColor)
                  .withOpacity(onPressed != null ? 1 : 0.65),
            );
          }),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
