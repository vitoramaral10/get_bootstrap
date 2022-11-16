part of get_bootstrap;

class FormGroupInlinePlainText extends StatelessWidget {
  final String? title;
  final String value;
  final bool required;

  const FormGroupInlinePlainText({
    super.key,
    this.title,
    required this.value,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return BTRow(
      children: [
        if (title != null)
          BTCol(
            sizes: const [
              'col-xl-2',
              'col-sm-12',
              'col-xs-12',
            ],
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
          sizes: const [
            'col-xl-10',
            'col-sm-12',
            'col-xs-12',
          ],
          child: Text(value),
        ),
      ],
    );
  }
}
