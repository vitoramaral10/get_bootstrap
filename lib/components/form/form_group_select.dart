part of get_bootstrap;

class FormGroupSelect<T> extends StatelessWidget {
  final String? title;
  final bool required;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final bool lg;
  final bool sm;
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
    this.lg = false,
    this.sm = false,
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
            fontSize: lg
                ? 19
                : sm
                    ? 14
                    : 16,
            fontWeight: FontWeight.normal,
          ),
          isDense: true,
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: lg
                  ? 19
                  : sm
                      ? 6.5
                      : 12,
              horizontal: lg
                  ? 16
                  : sm
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
