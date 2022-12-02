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
  final FocusNode? focusNode;
  final Function()? onPressed;

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
    this.focusNode,
    this.onPressed,
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
        if (title != null) const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: BootstrapThemeData.light.inputDecorationTheme.hintStyle
                ?.copyWith(
              color: readonly ? BTColors.gray900 : null,
              fontSize: lg
                  ? 20
                  : sm
                      ? 14
                      : 16,
            ),
            isDense: true,
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
            filled: true,
            fillColor: disabled ? BTColors.gray200 : null,
          ),
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          style: TextStyle(
            fontSize: lg
                ? 20
                : sm
                    ? 14
                    : 16,
          ),
          readOnly: readonly,
          obscureText: obscureText,
          maxLines: maxLines,
          maxLength: maxLength,
          onChanged: onChanged,
          onTap: onPressed,
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          inputFormatters: inputFormatters,
          enabled: !disabled,
          autofillHints: autofillHints,
          autovalidateMode: autovalidateMode,
        ),
      ],
    );
  }
}
