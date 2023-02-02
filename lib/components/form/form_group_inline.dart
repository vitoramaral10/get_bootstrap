part of get_bootstrap;

class FormGroupInline extends StatelessWidget {
  final bool disabled;
  final bool readonly;
  final Size? size;
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
  final int xsTitle;
  final int smTitle;
  final int mdTitle;
  final int lgTitle;
  final int xlTitle;
  final int xxlTitle;
  final int xsField;
  final int smField;
  final int mdField;
  final int lgField;
  final int xlField;
  final int xxlField;

  const FormGroupInline({
    super.key,
    this.disabled = false,
    this.readonly = false,
    this.title,
    this.placeholder,
    this.required = false,
    this.maxLines = 1,
    this.maxLength,
    this.size,
    this.obscureText = false,
    this.inputFormatters,
    this.validator,
    this.autovalidateMode,
    this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
    this.xsTitle = 12,
    this.smTitle = 12,
    this.mdTitle = 12,
    this.lgTitle = 2,
    this.xlTitle = 2,
    this.xxlTitle = 2,
    this.xsField = 12,
    this.smField = 12,
    this.mdField = 12,
    this.lgField = 10,
    this.xlField = 10,
    this.xxlField = 10,
  });

  @override
  Widget build(BuildContext context) {
    return BTRow(
      children: [
        if (title != null)
          BTCol(
            xs: xsTitle,
            sm: smTitle,
            md: mdTitle,
            lg: lgTitle,
            xl: xlTitle,
            xxl: xxlTitle,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(title!),
                ),
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
          ),
        BTCol(
          xs: xsField,
          sm: smField,
          md: mdField,
          lg: lgField,
          xl: xlField,
          xxl: xxlField,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: BootstrapThemeData.light.inputDecorationTheme.hintStyle
                  ?.copyWith(
                color: readonly ? BTColors.gray900 : null,
                fontSize: size == Size.lg
                    ? 20
                    : size == Size.sm
                        ? 14
                        : 16,
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: size == Size.lg
                    ? 16
                    : size == Size.sm
                        ? 8
                        : 12,
                horizontal: size == Size.lg
                    ? 16
                    : size == Size.sm
                        ? 8
                        : 12,
              ),
              filled: true,
              fillColor: disabled ? BTColors.gray200 : null,
            ),
            style: TextStyle(
              fontSize: size == Size.lg
                  ? 20
                  : size == Size.sm
                      ? 14
                      : 16,
            ),
            readOnly: readonly,
            obscureText: obscureText,
            maxLines: maxLines,
            maxLength: maxLength,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            validator: validator,
            inputFormatters: inputFormatters,
            enabled: !disabled,
            autovalidateMode: autovalidateMode,
          ),
        ),
      ],
    );
  }
}
