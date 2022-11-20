part of get_bootstrap;

class BTButtonOutline extends StatelessWidget {
  /// The text to displayed in button, this lenght have a max 70 characters.
  final Widget child;
  final bool? lg;
  final bool? sm;
  final bool? outline;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const BTButtonOutline({
    super.key,
    required this.child,
    this.lg,
    this.sm,
    this.outline,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 48
          : sm == true
              ? 31
              : 38,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.65),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed) ||
                states.contains(MaterialState.hovered)) {
              return (backgroundColor ?? BTColors.primary).computeLuminance() >
                      0.5
                  ? BTColors.dark
                  : Colors.white;
            }

            return (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.65);
          }),
          overlayColor: MaterialStateProperty.all(
            (backgroundColor ?? Theme.of(context).primaryColor)
                .withOpacity(onPressed != null ? 1 : 0.65),
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return TextStyle(
              color: (backgroundColor ?? Theme.of(context).primaryColor)
                  .withOpacity(onPressed != null ? 1 : 0.65),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            );
          }),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
