import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double elevation;
  final EdgeInsets padding;
  final Widget child;
  final Widget? collapsedChild;
  final Color? backgroundColor;

  const Header({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.elevation = 0,
    this.collapsedChild,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (buildContext, boxConstraints) {
      return Material(
        elevation: elevation,
        child: Container(
          padding: boxConstraints.maxWidth <= 768
              ? const EdgeInsets.symmetric(horizontal: 24, vertical: 8)
              : padding,
          color: backgroundColor,
          child: Row(
            children: [
              boxConstraints.maxWidth <= 768
                  ? InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.menu,
                        color: (backgroundColor!.computeLuminance() <= 0.5)
                            ? Colors.white
                            : Colors.black,
                      ),
                    )
                  : Container(),
              boxConstraints.maxWidth <= 768
                  ? collapsedChild ?? child
                  : Expanded(child: child),
            ],
          ),
        ),
      );
    });
  }
}
