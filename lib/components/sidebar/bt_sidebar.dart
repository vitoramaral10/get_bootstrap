part of '../../get_bootstrap.dart';

class BTSidebar extends StatelessWidget {
  final List<Widget> children;
  final double? elevation;
  final Color? backgroundColor;
  final double? width;

  const BTSidebar({
    required this.children,
    super.key,
    this.elevation,
    this.backgroundColor,
    this.width,
  });

  @override
  Widget build(final BuildContext context) => Drawer(
        backgroundColor: backgroundColor ?? Colors.white,
        elevation: elevation ?? 2,
        width: width ?? 220,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        ),
      );
}
