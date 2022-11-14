part of get_bootstrap;

class FormGroup extends StatelessWidget {
  final bool lg;
  final bool sm;
  final String? title;
  final bool required;
  final int maxLines;
  final int? maxLength;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;

  const FormGroup({
    super.key,
    this.title,
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
          onEditingComplete: onEditingComplete,
          controller: controller,
          maxLines: maxLines,
          maxLength: maxLength,
          obscureText: obscureText,
          inputFormatters: inputFormatters,
          validator: validator,
          autovalidateMode: autovalidateMode,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              vertical: lg
                  ? 13
                  : sm
                      ? 4.5
                      : 8,
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
