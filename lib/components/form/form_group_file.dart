part of '../../get_bootstrap.dart';

class FormGroupFile extends StatelessWidget {
  final bool disabled;
  final bool readonly;
  final Size? size;
  final String? title;
  final String fileName;
  final bool required;
  final void Function()? onPressed;

  const FormGroupFile({
    required this.onPressed,
    super.key,
    this.disabled = false,
    this.readonly = false,
    this.title,
    this.fileName = 'Nenhum arquivo encontrado',
    this.required = false,
    this.size,
  });

  @override
  Widget build(final BuildContext context) => InkWell(
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
                      padding: EdgeInsets.only(left: 4),
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
                  BorderSide(color: BTColors.gray400),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              width: double.maxFinite,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 1),
                    decoration: const BoxDecoration(
                      color: BTColors.gray400,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: size == Size.lg
                            ? 9
                            : size == Size.sm
                                ? 2
                                : 6,
                        horizontal: size == Size.lg
                            ? 16
                            : size == Size.sm
                                ? 8
                                : 12,
                      ),
                      decoration: const BoxDecoration(
                        color: BTColors.gray200,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                      ),
                      child: Text(
                        'Enviar arquivo',
                        style: TextStyle(
                          fontSize: size == Size.lg
                              ? 18
                              : size == Size.sm
                                  ? 12
                                  : 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size == Size.lg
                        ? 12
                        : size == Size.sm
                            ? 4
                            : 8,
                  ),
                  Text(
                    fileName,
                    style: TextStyle(
                      fontSize: size == Size.lg
                          ? 18
                          : size == Size.sm
                              ? 12
                              : 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
