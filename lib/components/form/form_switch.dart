part of get_bootstrap;

class FormSwitch extends StatelessWidget {
  final bool value;
  final Widget? label;
  final bool reverse;
  final bool disabled;
  final Color backgroundColor;
  final Color foregroundColor;
  final ValueChanged<bool>? onChanged;

  const FormSwitch({
    Key? key,
    required this.value,
    this.label,
    this.reverse = false,
    this.disabled = false,
    this.backgroundColor = BTColors.primary,
    this.foregroundColor = BTColors.white,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (!disabled && onChanged != null)
          ? !value
              ? onChanged!(true)
              : onChanged!(false)
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (reverse && label != null)
            Flexible(
              child: label!,
            ),
          if (reverse && label != null) const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              color: !value
                  ? Colors.transparent
                  : disabled
                      ? backgroundColor.withAlpha(128)
                      : backgroundColor,
              border: Border.fromBorderSide(BorderSide(
                color: !value
                    ? disabled
                        ? BTColors.black.withAlpha(40)
                        : BTColors.black.withAlpha(64)
                    : disabled
                        ? Colors.transparent
                        : backgroundColor,
              )),
              borderRadius: const BorderRadius.all(Radius.circular(32.0)),
            ),
            width: 32.0,
            height: 16.0,
            child: AnimatedAlign(
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 150),
              child: Container(
                padding: const EdgeInsets.all(1.5),
                child: Container(
                  decoration: BoxDecoration(
                    color: !value
                        ? disabled
                            ? BTColors.black.withAlpha(40)
                            : BTColors.black.withAlpha(64)
                        : foregroundColor,
                    shape: BoxShape.circle,
                  ),
                  width: 12.0,
                  height: 12.0,
                ),
              ),
            ),
          ),
          if (!reverse && label != null) const SizedBox(width: 8),
          if (!reverse && label != null)
            Flexible(
              child: label!,
            ),
        ],
      ),
    );
  }
}
