part of get_bootstrap;

class BTModal extends StatelessWidget {
  final Alignment? alignment;
  final Size? size;
  final bool fullScreen;
  final Size? fullScreenSize;
  final Color? headBackground;
  final Color? bodyBackground;
  final Color? footerBackground;
  final EdgeInsetsGeometry? headPadding;
  final EdgeInsetsGeometry? bodyPadding;
  final EdgeInsetsGeometry? footerPadding;
  final bool darkMode;
  final Widget? head;
  final Widget? body;
  final Widget? footer;

  BTModal({
    super.key,
    this.alignment = Alignment.topCenter,
    this.size,
    this.fullScreen = false,
    this.fullScreenSize,
    this.head,
    required this.body,
    this.footer,
    this.headBackground,
    this.bodyBackground,
    this.footerBackground,
    this.headPadding,
    this.bodyPadding,
    this.footerPadding,
    this.darkMode = false,
  }) : assert(_checkSizes(size));

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: (fullScreen && fullScreenSize == null) ||
              (fullScreen &&
                  fullScreenSize == Size.xxl &&
                  MediaQuery.of(context).size.width < 1400) ||
              (fullScreen &&
                  fullScreenSize == Size.xl &&
                  MediaQuery.of(context).size.width < 1200) ||
              (fullScreen &&
                  fullScreenSize == Size.lg &&
                  MediaQuery.of(context).size.width < 992) ||
              (fullScreen &&
                  fullScreenSize == Size.md &&
                  MediaQuery.of(context).size.width < 768) ||
              (fullScreen &&
                  fullScreenSize == Size.sm &&
                  MediaQuery.of(context).size.width < 576)
          ? EdgeInsets.zero
          : MediaQuery.of(context).size.width <= 576
              ? const EdgeInsets.all(8)
              : const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 40.0,
                ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: (darkMode ? BTColors.gray600 : BTColors.gray300),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      alignment: alignment,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: (fullScreen && fullScreenSize == null) ||
                  (fullScreen &&
                      fullScreenSize == Size.xxl &&
                      MediaQuery.of(context).size.width < 1400) ||
                  (fullScreen &&
                      fullScreenSize == Size.xl &&
                      MediaQuery.of(context).size.width < 1200) ||
                  (fullScreen &&
                      fullScreenSize == Size.lg &&
                      MediaQuery.of(context).size.width < 992) ||
                  (fullScreen &&
                      fullScreenSize == Size.md &&
                      MediaQuery.of(context).size.width < 768) ||
                  (fullScreen &&
                      fullScreenSize == Size.sm &&
                      MediaQuery.of(context).size.width < 576)
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width >= 1200
                  ? size == Size.sm
                      ? 300
                      : size == Size.lg
                          ? 800
                          : size == Size.xl
                              ? 1140
                              : 500
                  : MediaQuery.of(context).size.width >= 992
                      ? size == Size.sm
                          ? 300
                          : size == Size.lg
                              ? 800
                              : size == Size.xl
                                  ? 800
                                  : 500
                      : MediaQuery.of(context).size.width >= 576
                          ? size == Size.sm
                              ? 300
                              : 500
                          : MediaQuery.of(context).size.width,
          minHeight: (fullScreen && fullScreenSize == null) ||
                  (fullScreen &&
                      fullScreenSize == Size.xxl &&
                      MediaQuery.of(context).size.width < 1400) ||
                  (fullScreen &&
                      fullScreenSize == Size.xl &&
                      MediaQuery.of(context).size.width < 1200) ||
                  (fullScreen &&
                      fullScreenSize == Size.lg &&
                      MediaQuery.of(context).size.width < 992) ||
                  (fullScreen &&
                      fullScreenSize == Size.md &&
                      MediaQuery.of(context).size.width < 768) ||
                  (fullScreen &&
                      fullScreenSize == Size.sm &&
                      MediaQuery.of(context).size.width < 576)
              ? MediaQuery.of(context).size.height
              : 0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (head != null)
              Container(
                padding: headPadding ?? const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: headBackground ??
                      (darkMode ? BTColors.gray800 : BTColors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(8),
                    topRight: const Radius.circular(8),
                    bottomLeft: (body == null || footer == null)
                        ? const Radius.circular(8)
                        : Radius.zero,
                    bottomRight: (body == null || footer == null)
                        ? const Radius.circular(8)
                        : Radius.zero,
                  ),
                ),
                width: double.infinity,
                child: head!,
              ),
            if (head != null && (body != null || footer != null))
              Divider(
                height: 1,
                color: darkMode ? BTColors.gray600 : BTColors.gray300,
              ),
            if (body != null)
              (fullScreen && size == null) || (fullScreen && size == Size.xxl)
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: bodyPadding ?? const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: bodyBackground ??
                                (darkMode ? BTColors.gray800 : BTColors.white),
                            borderRadius: BorderRadius.only(
                              topLeft: head == null
                                  ? const Radius.circular(8)
                                  : Radius.zero,
                              topRight: head == null
                                  ? const Radius.circular(8)
                                  : Radius.zero,
                              bottomLeft: footer == null
                                  ? const Radius.circular(8)
                                  : Radius.zero,
                              bottomRight: footer == null
                                  ? const Radius.circular(8)
                                  : Radius.zero,
                            ),
                          ),
                          width: double.infinity,
                          child: body,
                        ),
                      ),
                    )
                  : Container(
                      padding: bodyPadding ?? const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: bodyBackground ??
                            (darkMode ? BTColors.gray800 : BTColors.white),
                        borderRadius: BorderRadius.only(
                          topLeft: head == null
                              ? const Radius.circular(8)
                              : Radius.zero,
                          topRight: head == null
                              ? const Radius.circular(8)
                              : Radius.zero,
                          bottomLeft: footer == null
                              ? const Radius.circular(8)
                              : Radius.zero,
                          bottomRight: footer == null
                              ? const Radius.circular(8)
                              : Radius.zero,
                        ),
                      ),
                      width: double.infinity,
                      child: body,
                    ),
            if (footer != null)
              Divider(
                height: 1,
                color: darkMode ? BTColors.gray600 : BTColors.gray300,
              ),
            if (footer != null)
              Container(
                padding: footerPadding ?? const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: footerBackground ??
                      (darkMode ? BTColors.gray800 : BTColors.white),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                width: double.infinity,
                child: footer!,
              ),
          ],
        ),
      ),
    );
  }
}

bool _checkSizes(Size? size) {
  if (size != null && ![Size.sm, Size.lg, Size.xl, Size.xxl].contains(size)) {
    throw 'O parâmetro "size" somente pode ser utilizado com os tamanhos: sm, lg, xl, xxl';
  }

  return true;
}
