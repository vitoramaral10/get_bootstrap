part of get_bootstrap;

class FormGroup extends StatelessWidget {
  final TextInputType? keyboardType;
  final bool disabled;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final bool readonly;
  final bool lg;
  final bool sm;
  final String? title;
  final String? placeholder;
  final bool required;
  final int maxLines;
  final int? maxLength;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;

  const FormGroup({
    super.key,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints,
    this.disabled = false,
    this.readonly = false,
    this.title,
    this.placeholder,
    this.required = false,
    this.maxLines = 1,
    this.maxLength,
    this.lg = false,
    this.sm = false,
    this.obscureText = false,
    this.inputFormatters,
    this.validator,
    this.autovalidateMode,
    this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        if (title != null) const SizedBox(height: 4),
        TextFormField(
          keyboardType: keyboardType,
          autofillHints: autofillHints,
          textCapitalization: textCapitalization,
          readOnly: readonly,
          enabled: !disabled,
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          controller: controller,
          maxLines: maxLines,
          maxLength: maxLength,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          validator: validator,
          autovalidateMode: autovalidateMode,
          style: TextStyle(
            fontSize: lg
                ? 20
                : sm
                    ? 14
                    : 16,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: disabled ? BTColors.gray200 : null,
            hintText: placeholder,
            isDense: true,
            hintStyle: BootstrapThemeData.light.inputDecorationTheme.hintStyle
                ?.copyWith(
              color: readonly ? BTColors.gray900 : null,
              fontSize: lg
                  ? 20
                  : sm
                      ? 14
                      : 16,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: lg
                  ? 16
                  : sm
                      ? 8
                      : 12,
              horizontal: lg
                  ? 16
                  : sm
                      ? 8
                      : 12,
            ),
          ),
        ),
      ],
    );
  }
}
