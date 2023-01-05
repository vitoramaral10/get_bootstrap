part of get_bootstrap;

class FormCheckbox extends StatelessWidget {
  final bool value;
  final Widget? label;
  final bool reverse;
  final bool disabled;
  final Color backgroundColor;
  final Color foregroundColor;
  final Function(bool?)? onChanged;

  const FormCheckbox({
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
          Transform.scale(
            scale: 0.7,
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              splashRadius: 8,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: BTColors.red, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
              side: const BorderSide(width: 1),
            ),
          ),
          if (!reverse && label != null)
            Flexible(
              child: label!,
            ),
        ],
      ),
    );
  }
}
