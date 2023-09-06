part of '../../get_bootstrap.dart';

class FormGroupPlainText extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final bool required;
  final String value;

  const FormGroupPlainText({
    required this.value,
    super.key,
    this.title,
    this.titleStyle,
    this.required = false,
  });

  @override
  Widget build(final BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Row(
              children: [
                Text(
                  title!,
                  style: titleStyle,
                ),
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
          if (title != null) const SizedBox(height: 4),
          SelectableText(value),
        ],
      );
}
