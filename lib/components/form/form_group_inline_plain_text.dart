part of get_bootstrap;

class FormGroupInlinePlainText extends StatelessWidget {
  final String? title;
  final String value;
  final bool required;
  final List<String> sizesTitle;
  final List<String> sizesField;

  const FormGroupInlinePlainText({
    super.key,
    this.title,
    required this.value,
    this.required = false,
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
              crossAxisAlignment: CrossAxisAlignment.center,
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
          child: Text(value),
        ),
      ],
    );
  }
}
