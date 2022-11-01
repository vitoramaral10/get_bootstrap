part of get_bootstrap;

class BTSidebar extends StatelessWidget {
  final List<Widget> children;
  final double? elevation;
  final Color? backgroundColor;
  final double? width;

  const BTSidebar({
    Key? key,
    required this.children,
    this.elevation,
    this.backgroundColor,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: elevation ?? 2,
      width: width ?? 220,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }
}
