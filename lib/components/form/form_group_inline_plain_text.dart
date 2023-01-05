part of get_bootstrap;

class FormGroupInlinePlainText extends StatelessWidget {
  final String? title;
  final String value;
  final bool required;
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

  const FormGroupInlinePlainText({
    super.key,
    this.title,
    required this.value,
    this.required = false,
    this.xsTitle = 12,
    this.smTitle = 12,
    this.mdTitle = 12,
    this.lgTitle = 12,
    this.xlTitle = 2,
    this.xxlTitle = 2,
    this.xsField = 12,
    this.smField = 12,
    this.mdField = 12,
    this.lgField = 12,
    this.xlField = 2,
    this.xxlField = 2,
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
          xs: xsField,
          sm: smField,
          md: mdField,
          lg: lgField,
          xl: xlField,
          xxl: xxlField,
          child: Text(value),
        ),
      ],
    );
  }
}
