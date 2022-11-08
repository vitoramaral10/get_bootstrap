part of get_bootstrap;

class BTButtonOutline extends StatelessWidget {
  /// The text to displayed in button, this lenght have a max 70 characters.
  final String text;
  final bool? lg;
  final bool? sm;
  final bool? outline;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const BTButtonOutline({
    super.key,
    required this.text,
    this.lg,
    this.sm,
    this.outline,
    this.onPressed,
    this.backgroundColor,
  }) : assert(text.length <= 70);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 40
          : sm == true
              ? 24
              : 32,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
            color: backgroundColor ?? BTColors.primary,
          )),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return (backgroundColor ?? BTColors.primary).computeLuminance() >
                      0.5
                  ? BTColors.dark
                  : Colors.white;
            }

            return backgroundColor ?? BTColors.primary;
          }),
          overlayColor: MaterialStateProperty.all(
            backgroundColor ?? BTColors.primary,
          ),
          textStyle: MaterialStateProperty.resolveWith((states) {
            return TextStyle(
              color: backgroundColor ?? BTColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            );
          }),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
