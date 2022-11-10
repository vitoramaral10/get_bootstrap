part of get_bootstrap;

class FormGroup extends StatelessWidget {
  final bool lg;
  final bool sm;
  final String? title;
  final bool required;
  final int maxLines;
  final int? maxLength;
  final bool obscureText;

  const FormGroup({
    super.key,
    this.title,
    this.required = false,
    this.maxLines = 1,
    this.maxLength,
    this.lg = false,
    this.sm = false,
    this.obscureText = false,
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
        SizedBox(
          height: lg
              ? 48 + (maxLength != null ? 18 : 0)
              : sm
                  ? 31 + (maxLength != null ? 18 : 0)
                  : 38 + (maxLength != null ? 18 : 0),
          child: TextField(
            maxLines: maxLines,
            maxLength: maxLength,
            obscureText: obscureText,
            decoration: InputDecoration(
              isDense: false,
              contentPadding: EdgeInsets.symmetric(
                vertical: lg
                    ? 8
                    : sm
                        ? 4
                        : 6,
                horizontal: lg
                    ? 16
                    : sm
                        ? 8
                        : 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
