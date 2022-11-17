part of get_bootstrap;

class FormGroupFile extends StatelessWidget {
  final bool disabled;
  final bool readonly;
  final bool lg;
  final bool sm;
  final String? title;
  final String fileName;
  final bool required;
  final void Function()? onPressed;

  const FormGroupFile({
    super.key,
    this.disabled = false,
    this.readonly = false,
    this.title,
    this.fileName = 'Nenhum arquivo encontrado',
    this.required = false,
    this.lg = false,
    this.sm = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
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
          Container(
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(color: BTColors.gray400, width: 1.0),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            width: double.maxFinite,
            child: Row(children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    bottomLeft: Radius.circular(6.0),
                  ),
                  color: BTColors.gray400,
                ),
                padding: const EdgeInsets.only(right: 1.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      bottomLeft: Radius.circular(6.0),
                    ),
                    color: BTColors.gray200,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: lg
                        ? 9
                        : sm
                            ? 2
                            : 6,
                    horizontal: lg
                        ? 16
                        : sm
                            ? 8
                            : 12,
                  ),
                  child: Text(
                    'Enviar arquivo',
                    style: TextStyle(
                      fontSize: lg
                          ? 18
                          : sm
                              ? 12
                              : 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: lg
                    ? 12
                    : sm
                        ? 4
                        : 8,
              ),
              Text(
                fileName,
                style: TextStyle(
                  fontSize: lg
                      ? 18
                      : sm
                          ? 12
                          : 16,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
