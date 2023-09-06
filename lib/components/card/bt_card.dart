part of '../../get_bootstrap.dart';

class BTCard extends StatelessWidget {
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

  const BTCard({
    required this.body,
    super.key,
    this.head,
    this.footer,
    this.headBackground,
    this.bodyBackground,
    this.footerBackground,
    this.headPadding,
    this.bodyPadding,
    this.footerPadding,
    this.darkMode = false,
  });

  @override
  Widget build(final BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(
              color: (darkMode ? BTColors.gray600 : BTColors.gray300),
            ),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (head != null)
              Head(
                headPadding: headPadding,
                headBackground: headBackground,
                head: head,
                body: body,
                footer: footer,
                darkMode: darkMode,
              ),
            if (head != null && (body != null || footer != null))
              Divider(
                height: 1,
                color: darkMode ? BTColors.gray600 : BTColors.gray300,
              ),
            if (body != null)
              Body(
                bodyPadding: bodyPadding,
                head: head,
                footer: footer,
                bodyBackground: bodyBackground,
                body: body!,
                darkMode: darkMode,
              ),
            if (footer != null)
              Divider(
                height: 1,
                color: darkMode ? BTColors.gray600 : BTColors.gray300,
              ),
            if (footer != null)
              Footer(
                footerPadding: footerPadding,
                footerBackground: footerBackground,
                footer: footer,
                darkMode: darkMode,
              ),
          ],
        ),
      );
}
