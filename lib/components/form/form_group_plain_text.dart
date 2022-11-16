part of get_bootstrap;

class FormGroupPlainText extends StatelessWidget {
  final String? title;
  final bool required;
  final String value;

  const FormGroupPlainText({
    super.key,
    this.title,
    required this.value,
    this.required = false,
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
        Text(value),
      ],
    );
  }
}
