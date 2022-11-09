part of get_bootstrap;

class BTButton extends StatelessWidget {
  /// The text to displayed in button, this lenght have a max 70 characters.
  final String text;
  final bool? lg;
  final bool? sm;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final IconData? icon;

  const BTButton({
    super.key,
    required this.text,
    this.lg,
    this.sm,
    this.onPressed,
    this.backgroundColor,
    this.icon,
  }) : assert(text.length <= 70);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: lg == true
          ? 48
          : sm == true
              ? 31
              : 38,
      child: ElevatedButton(
        style: ButtonStyle(
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
            return TextStyle(
              color: (backgroundColor ?? Theme.of(context).primaryColor)
                  .withOpacity(onPressed != null ? 1 : 0.65),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            );
          }),
          elevation: MaterialStateProperty.all(0),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(icon),
              ),
            if (icon != null) const Spacer(),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
