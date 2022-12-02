part of get_bootstrap;

class FormGroupInlineSelect<T> extends StatelessWidget {
  final String? title;
  final bool required;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final bool lg;
  final bool sm;
  final List<String> sizesTitle;
  final List<String> sizesField;

  const FormGroupInlineSelect({
    super.key,
    this.title,
    this.required = false,
    required this.items,
    required this.value,
    this.onChanged,
    this.validator,
    this.lg = false,
    this.sm = false,
    this.sizesTitle = const [
      'col-xl-2',
      'col-sm-12',
      'col-xs-12',
    ],
    this.sizesField = const [
      'col-xl-2',
      'col-sm-12',
      'col-xs-12',
    ],
  });

  @override
  Widget build(BuildContext context) {
    return BTRow(
      children: [
        if (title != null)
          BTCol(
            sizes: sizesTitle,
            child: Row(
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
          ),
        BTCol(
          sizes: sizesField,
          child: DropdownButtonFormField<T>(
            items: items,
            value: value,
            onChanged: onChanged,
            style: TextStyle(
              fontSize: lg
                  ? 19
                  : sm
                      ? 14
                      : 16,
              fontWeight: FontWeight.normal,
            ),
            isDense: true,
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
          ),
        ),
      ],
    );
  }
}
