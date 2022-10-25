part of get_bootstrap;

class BTCard extends StatelessWidget {
  final Widget? head;
  final Widget body;
  final Widget? footer;
  final Color? headBackground;
  final Color? bodyBackground;
  final Color? footerBackground;

  const BTCard({
    super.key,
    this.head,
    required this.body,
    this.footer,
    this.headBackground,
    this.bodyBackground,
    this.footerBackground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: BTColors.gray300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        if (head != null)
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: headBackground,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
            ),
            child: head!,
          ),
        if (head != null) const Divider(),
        Container(
          padding: const EdgeInsets.all(16.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: head == null ? const Radius.circular(6) : Radius.zero,
              topRight: head == null ? const Radius.circular(6) : Radius.zero,
            ),
            color: bodyBackground,
          ),
          child: body,
        ),
        if (footer != null) const Divider(),
        if (footer != null)
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: footerBackground,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: footer!,
          )
      ]),
    );
  }
}
