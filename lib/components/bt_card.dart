part of get_bootstrap;

class BTCard extends StatelessWidget {
  final Widget? head;
  final Widget body;
  final Widget? footer;
  final Color? headBackground;
  final Color? bodyBackground;
  final Color? footerBackground;
  final EdgeInsetsGeometry? headPadding;
  final EdgeInsetsGeometry? bodyPadding;
  final EdgeInsetsGeometry? footerPadding;

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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: BTColors.gray300)),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (head != null)
          Container(
            padding: headPadding ?? const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: headBackground ?? const Color(0xFFF7F7F7),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: head!,
          ),
        if (head != null)
          const Divider(
            color: BTColors.gray300,
            height: 1,
          ),
        Container(
          padding: bodyPadding ?? const EdgeInsets.all(16.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: head == null ? const Radius.circular(6) : Radius.zero,
              topRight: head == null ? const Radius.circular(6) : Radius.zero,
              bottomLeft:
                  footer == null ? const Radius.circular(6) : Radius.zero,
              bottomRight:
                  footer == null ? const Radius.circular(6) : Radius.zero,
            ),
            color: bodyBackground ?? BTColors.white,
          ),
          child: body,
        ),
        if (footer != null)
          const Divider(
            color: BTColors.gray300,
            height: 1,
          ),
        if (footer != null)
          Container(
            padding: footerPadding ?? const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: footerBackground ?? const Color(0xFFF7F7F7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: footer!,
          ),
      ]),
    );
  }
}
