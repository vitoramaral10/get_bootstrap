part of get_bootstrap;

class FormGroupSelect<T> extends StatelessWidget {
  final String? title;
  final bool required;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final Size? size;
  final bool disabled;
  final AutovalidateMode? autovalidateMode;

  const FormGroupSelect({
    super.key,
    this.title,
    this.required = false,
    required this.items,
    required this.value,
    this.onChanged,
    this.validator,
    this.size,
    this.disabled = false,
    this.autovalidateMode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Row(
            children: [
              Text(title!),
              if (required)
                const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    '*',
                    style: TextStyle(color: BTColors.red),
                  ),
                ),
            ],
          ),
        if (title != null) const SizedBox(height: 8),
        DropdownButtonFormField<T>(
          items: items,
          value: value,
          onChanged: disabled ? null : onChanged,
          style: TextStyle(
            fontSize: size == Size.lg
                ? 19
                : size == Size.sm
                    ? 14
                    : 16,
            fontWeight: FontWeight.normal,
          ),
          isDense: true,
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: size == Size.lg
                  ? 19
                  : size == Size.sm
                      ? 6.5
                      : 12,
              horizontal: size == Size.lg
                  ? 16
                  : size == Size.sm
                      ? 8
                      : 12,
            ),
          ),
          validator: validator,
          autovalidateMode: autovalidateMode,
        ),
      ],
    );
  }
}
