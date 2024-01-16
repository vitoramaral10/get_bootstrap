part of '../get_bootstrap.dart';

//
// ignore: prefer-static-class
double _refWidth = 375;

//
// ignore: prefer-static-class
double? _scalingFactor;
//
// ignore: prefer-static-class
double? _width;

//
// ignore: prefer-static-class
void initScaling(final BuildContext context, {final bool debug = false}) {
  final mediaQuery = MediaQuery.of(context);
  _width = mediaQuery.size.width < mediaQuery.size.height
      ? mediaQuery.size.width
      : mediaQuery.size.height;
  _scalingFactor = _width! / _refWidth;

  if (debug) {
    //
    // ignore: avoid_print
    print('width => $_width');
  }
}

//
// ignore: prefer-static-class
double scale(final double dimension) {
  if (_width == null) {
    throw Exception('You must call initScaling() before any use of scale()');
  }

  return dimension * _scalingFactor!;
}

//
// ignore: prefer-correct-identifier-length
enum _GridTier { xs, sm, md, lg, xl, xxl }

//
// ignore: prefer-static-class
_GridTier _currentSize(final BuildContext context) {
  final breakpoints = ResponsiveGridBreakpoints.value;
  final mediaQueryData = MediaQuery.of(context);
  final width = mediaQueryData.size.width;

  if (width < breakpoints.xs) {
    return _GridTier.xs;
  } else if (width < breakpoints.sm) {
    return _GridTier.sm;
  } else if (width < breakpoints.md) {
    return _GridTier.md;
  } else if (width < breakpoints.lg) {
    return _GridTier.lg;
  } else if (width < breakpoints.xl) {
    return _GridTier.xl;
  } else {
    return _GridTier.xxl;
  }
}

class BTRow extends StatelessWidget {
  final List<BTCol> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final int rowSegments;

  const BTRow({
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rowSegments = 12,
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final rows = <Widget>[];

    int accumulatedWidth = 0;
    var cols = <Widget>[];

    for (final col in children) {
      final colWidth = col.currentConfig(context) ?? 1;
      //
      if (accumulatedWidth + colWidth > rowSegments) {
        if (accumulatedWidth < rowSegments) {
          cols.add(
            Spacer(
              flex: rowSegments - accumulatedWidth,
            ),
          );
        }
        rows.add(
          Row(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            children: cols,
          ),
        );

        cols = <Widget>[];
        accumulatedWidth = 0;
      }
      //
      cols.add(col);
      accumulatedWidth += colWidth;
    }

    if (accumulatedWidth >= 0) {
      if (accumulatedWidth < rowSegments) {
        cols.add(
          Spacer(
            flex: rowSegments - accumulatedWidth,
          ),
        );
      }
      rows.add(
        Row(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          children: cols,
        ),
      );
    }

    return Column(
      children: rows,
    );
  }
}

//
// ignore: prefer-single-widget-per-file
class BTCol extends StatelessWidget {
  final _config = <int?>[]..length = 6;
  final Widget child;
  final double? marginTop;
  final double? marginLeft;
  final double? marginRight;

  BTCol({
    required this.child,
    final int xs = 12,
    final int? sm,
    final int? md,
    final int? lg,
    final int? xl,
    final int? xxl,
    this.marginTop = 4,
    this.marginLeft,
    this.marginRight,
    super.key,
  }) {
    _config[_GridTier.xs.index] = xs;
    _config[_GridTier.sm.index] = sm ?? _config[_GridTier.xs.index];
    _config[_GridTier.md.index] = md ?? _config[_GridTier.sm.index];
    _config[_GridTier.lg.index] = lg ?? _config[_GridTier.md.index];
    _config[_GridTier.xl.index] = xl ?? _config[_GridTier.lg.index];
    _config[_GridTier.xxl.index] = xxl ?? _config[_GridTier.xl.index];
  }

  int? currentConfig(final BuildContext context) =>
      _config[_currentSize(context).index];

  @override
  Widget build(final BuildContext context) => Expanded(
        flex: currentConfig(context) ?? 1,
        child: Padding(
          padding: 48.0 == 0.0
              ? EdgeInsets.zero
              : EdgeInsets.only(
                  left: marginLeft ?? 48.0 / 12,
                  top: marginTop ?? 48.0 / 12,
                  right: marginRight ?? 48.0 / 12,
                  bottom: 48.0 / 12,
                ),
          child: child,
        ),
      );
}

/// Responsive grid list.
//
// ignore: prefer-single-widget-per-file
class ResponsiveGridList extends StatelessWidget {
  final double desiredItemWidth, minSpacing;
  final List<Widget> children;
  final bool squareCells, scroll;
  final MainAxisAlignment rowMainAxisAlignment;
  final bool shrinkWrap;

  const ResponsiveGridList({
    required this.desiredItemWidth,
    required this.children,
    this.minSpacing = 1,
    this.squareCells = false,
    this.scroll = true,
    this.rowMainAxisAlignment = MainAxisAlignment.start,
    this.shrinkWrap = false,
    super.key,
  });

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraints) {
          if (children.isEmpty) {
            return Container();
          }

          final double width = constraints.maxWidth;

          final double number =
              (width - minSpacing) / (desiredItemWidth + minSpacing);

          int intNumber;
          double spacing, itemWidth;

          if (number % 1 == 0) {
            intNumber = number.floor();
            spacing = minSpacing;
            itemWidth = desiredItemWidth;
          } else {
            intNumber = number.floor();

            final double doubleWidth = width -
                (intNumber * (desiredItemWidth + minSpacing) + minSpacing);

            itemWidth = desiredItemWidth +
                (doubleWidth / intNumber) *
                    (desiredItemWidth / (desiredItemWidth + minSpacing));

            spacing = (width - itemWidth * intNumber) / (intNumber + 1);
          }

          if (scroll) {
            return ListView.builder(
              shrinkWrap: shrinkWrap,
              itemBuilder: (final context, index) {
                if (index.isOdd) {
                  return SizedBox(height: minSpacing);
                }
                final rowChildren = <Widget>[];
                index = index ~/ 2;
                for (int index3 = index * intNumber;
                    index3 < (index + 1) * intNumber;
                    index3++) {
                  if (index3 >= children.length) {
                    break;
                  }
                  rowChildren.add(children[index3]);
                }

                return _ResponsiveGridListItem(
                  itemWidth: itemWidth,
                  spacing: spacing,
                  squareCells: squareCells,
                  mainAxisAlignment: rowMainAxisAlignment,
                  children: rowChildren,
                );
              },
              itemCount: (children.length / intNumber).ceil() * 2 - 1,
            );
          } else {
            final rows = <Widget>[
              SizedBox(
                height: minSpacing,
              ),
            ];
            //
            for (int index2 = 0;
                index2 < (children.length / intNumber).ceil();
                index2++) {
              final rowChildren = <Widget>[];
              //
              for (int index1 = index2 * intNumber;
                  index1 < (index2 + 1) * intNumber;
                  index1++) {
                if (index1 >= children.length) {
                  break;
                }
                rowChildren.add(children[index1]);
              }
              //
              rows
                ..add(
                  _ResponsiveGridListItem(
                    itemWidth: itemWidth,
                    spacing: spacing,
                    squareCells: squareCells,
                    mainAxisAlignment: rowMainAxisAlignment,
                    children: rowChildren,
                  ),
                )
                ..add(
                  SizedBox(
                    height: minSpacing,
                  ),
                );
            }

            return Column(
              children: rows,
            );
          }
        },
      );
}

//
// ignore: prefer-single-widget-per-file
class _ResponsiveGridListItem extends StatelessWidget {
  final double spacing, itemWidth;
  final List<Widget> children;
  final bool squareCells;
  final MainAxisAlignment mainAxisAlignment;

  const _ResponsiveGridListItem({
    required this.itemWidth,
    required this.spacing,
    required this.squareCells,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  @override
  Widget build(final BuildContext context) {
    final list = <Widget>[
      SizedBox(
        width: spacing,
      ),
    ];

    for (final child in children) {
      list
        ..add(
          SizedBox(
            width: itemWidth,
            height: squareCells ? itemWidth : null,
            child: child,
          ),
        )
        ..add(
          SizedBox(
            width: spacing,
          ),
        );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }
}
