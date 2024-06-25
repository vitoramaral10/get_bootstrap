part of '../../get_bootstrap.dart';

class FormGroup extends StatelessWidget {
  final TextInputType? keyboardType;
  final bool disabled;
  final TextCapitalization textCapitalization;
  final Iterable<String>? autofillHints;
  final bool readonly;
  final Size? size;
  final String? title;
  final String? placeholder;
  final String? labelText;
  final Color? backgroundColor;
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
  final BorderRadius? borderRadius;
  final Widget? suffixIcon;

  const FormGroup({
    super.key,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.autofillHints,
    this.disabled = false,
    this.readonly = false,
    this.title,
    this.placeholder,
    this.labelText,
    this.required = false,
    this.maxLines = 1,
    this.maxLength,
    this.size,
    this.obscureText = false,
    this.inputFormatters,
    this.backgroundColor,
    this.validator,
    this.autovalidateMode,
    this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
    this.focusNode,
    this.onPressed,
    this.borderRadius,
    this.suffixIcon,
  });

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Row(
              children: [
                Text(title!),
                if (required)
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
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
              labelText: labelText,
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
              suffixIcon: suffixIcon,
              filled: true,
              fillColor:
                  disabled || readonly && keyboardType != TextInputType.datetime
                      ? BTColors.gray200
                      : backgroundColor,
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BTColors.danger),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: BTColors.blue500.withOpacity(0.3),
                  width: 4,
                ),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BTColors.danger),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BTColors.gray400),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: BTColors.gray400),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: BTColors.gray400),
                borderRadius:
                    borderRadius ?? const BorderRadius.all(Radius.circular(6)),
              ),
            ),
            keyboardType: keyboardType,
            textCapitalization: textCapitalization,
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
