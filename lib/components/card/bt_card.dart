part of get_bootstrap;

class BTCard extends StatelessWidget {
  final Color? headBackground;
  final Color? bodyBackground;
  final Color? footerBackground;
  final EdgeInsetsGeometry? headPadding;
  final EdgeInsetsGeometry? bodyPadding;
  final EdgeInsetsGeometry? footerPadding;
  final bool darkMode;
  final Widget? head;
  final Widget body;
  final Widget? footer;

  const BTCard({
    super.key,
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(
          color: (darkMode ? BTColors.gray600 : BTColors.gray300),
        )),
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
              darkMode: darkMode,
            ),
          if (head != null)
            Divider(
              height: 1,
              color: darkMode ? BTColors.gray600 : BTColors.gray300,
            ),
          Body(
            bodyPadding: bodyPadding,
            head: head,
            footer: footer,
            bodyBackground: bodyBackground,
            body: body,
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
}
