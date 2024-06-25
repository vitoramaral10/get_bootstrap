import 'package:flutter/material.dart';

import '../../get_bootstrap.dart';

/// A widget that represents the body of a card.
///
/// The [Body] widget is used to display the main content of a card. It provides
/// options to customize the padding, background color, and dark mode. The body
/// can have a header and a footer as well.
///
/// Example usage:
///
/// ```dart
/// Body(
///   bodyPadding: EdgeInsets.all(16),
///   head: Text('Card Header'),
///   footer: Text('Card Footer'),
///   bodyBackground: Colors.blue,
///   body: Text('Card Body'),
/// )
/// ```

class Body extends StatelessWidget {
  final EdgeInsetsGeometry? bodyPadding;
  final Widget? head;
  final Widget? footer;
  final Color? bodyBackground;
  final Widget body;
  final bool darkMode;

  /// Creates a [Body] widget.
  ///
  /// The [bodyPadding], [head], [footer], [bodyBackground], and [body] parameters
  /// are required. The [darkMode] parameter is optional and defaults to `false`.
  const Body({
    required this.bodyPadding,
    required this.head,
    required this.footer,
    required this.bodyBackground,
    required this.body,
    super.key,
    this.darkMode = false,
  });

  @override
  Widget build(final BuildContext context) => Container(
        padding: bodyPadding ?? const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:
              bodyBackground ?? (darkMode ? BTColors.gray800 : BTColors.white),
          borderRadius: BorderRadius.only(
            topLeft: head == null ? const Radius.circular(6) : Radius.zero,
            topRight: head == null ? const Radius.circular(6) : Radius.zero,
            bottomLeft: footer == null ? const Radius.circular(6) : Radius.zero,
            bottomRight:
                footer == null ? const Radius.circular(6) : Radius.zero,
          ),
        ),
        width: double.infinity,
        child: body,
      );
}
