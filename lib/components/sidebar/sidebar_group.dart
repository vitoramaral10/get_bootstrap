import 'package:flutter/material.dart';

class BTSidebarGroup extends StatelessWidget {
  final String title;
  final IconData? icon;
  final Color? iconColor;
  final List<Widget>? children;

  const BTSidebarGroup({
    super.key,
    required this.title,
    this.icon,
    this.iconColor,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      Padding(
        padding: const EdgeInsets.only(
          top: 4.0,
          bottom: 4.0,
        ),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  icon,
                  size: 16,
                  color: iconColor,
                ),
              ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    ];

    for (var element in children!) {
      items.add(Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 4, bottom: 4),
        child: element,
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: items,
      ),
    );
  }
}
