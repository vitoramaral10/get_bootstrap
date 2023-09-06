part of '../../get_bootstrap.dart';

class BTModal extends StatelessWidget {
  static bool checkSizes(final Size? size) {
    if (size != null && ![Size.sm, Size.lg, Size.xl, Size.xxl].contains(size)) {
      throw Exception();
    }

    return true;
  }

  final Alignment? alignment;
  final Size? size;
  final bool fullScreen;
  final double elevation;
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

  double _getMaxWidth(final BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isXxl = fullScreenSize == Size.xxl && screenWidth < 1400;
    final isXl = fullScreenSize == Size.xl && screenWidth < 1200;
    final isLg = fullScreenSize == Size.lg && screenWidth < 992;
    final isMd = fullScreenSize == Size.md && screenWidth < 768;
    final isSm = fullScreenSize == Size.sm && screenWidth < 576;

    if (fullScreen && (isXxl || isXl || isLg || isMd || isSm)) {
      return screenWidth;
    }

    if (screenWidth >= 1200) {
      if (size case Size.sm) {
        return 300;
      } else if (size case Size.lg) {
        return 800;
      } else if (size case Size.xl) {
        return 1140;
      } else {
        return 500;
      }
    } else if (screenWidth >= 992) {
      if (size case Size.sm) {
        return 300;
      } else if (size case Size.lg) {
        return 800;
      } else if (size case Size.xl) {
        return 800;
      } else {
        return 500;
      }
    } else if (screenWidth >= 576) {
      if (size == Size.sm) {
        return 300;
      } else {
        return 500;
      }
    } else {
      return screenWidth;
    }
  }

  BTModal({
    required this.body,
    super.key,
    this.alignment = Alignment.topCenter,
    this.size,
    this.fullScreen = false,
    this.fullScreenSize,
    this.elevation = 6.0,
    this.head,
    this.footer,
    this.headBackground,
    this.bodyBackground,
    this.footerBackground,
    this.headPadding,
    this.bodyPadding,
    this.footerPadding,
    this.darkMode = false,
  }) : assert(
            BTModal.checkSizes(size),
            'O parâmetro "size" somente pode ser utilizado com os '
            'tamanhos: sm, lg, xl, xxl');

  @override
  Widget build(final BuildContext context) => Dialog(
        elevation: elevation,
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
                    vertical: 24,
                    horizontal: 40,
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
            maxWidth: _getMaxWidth(context),
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
                  padding: headPadding ?? const EdgeInsets.all(16),
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
                  child: Material(
                    color: Colors.transparent,
                    textStyle: BTTypography().headline5,
                    child: head,
                  ),
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
                            padding: bodyPadding ?? const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: bodyBackground ??
                                  (darkMode
                                      ? BTColors.gray800
                                      : BTColors.white),
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
                        padding: bodyPadding ?? const EdgeInsets.all(16),
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
              if (head != null && (body != null || footer != null))
                Divider(
                  height: 1,
                  color: darkMode ? BTColors.gray600 : BTColors.gray300,
                ),
              if (footer != null)
                Container(
                  padding: footerPadding ?? const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: footerBackground ??
                        (darkMode ? BTColors.gray800 : BTColors.white),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  width: double.infinity,
                  child: footer,
                ),
            ],
          ),
        ),
      );
}
