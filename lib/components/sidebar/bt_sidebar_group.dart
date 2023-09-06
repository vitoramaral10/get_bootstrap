part of '../../get_bootstrap.dart';

class BTSidebarGroup extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? iconColor;
  final List<Widget>? children;

  const BTSidebarGroup({
    required this.title,
    super.key,
    this.icon,
    this.iconColor,
    this.children,
  });

  @override
  Widget build(final BuildContext context) {
    final List<Widget> items = [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  icon,
                  size: 16,
                  color: iconColor,
                ),
              ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ];

    for (final element in children!) {
      items.add(
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 4, bottom: 4),
          child: element,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items,
      ),
    );
  }
}
