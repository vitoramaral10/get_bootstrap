part of get_bootstrap;

List<String> _prefixes = ['xl', 'lg', 'md', 'sm', ''];
List<String> _prefixesReversed = ['', 'sm', 'md', 'lg', 'xl'];

double _oneColumnRatio = 0.083333;
double _gutterSize = 48.0;
int _numberOfColumns = 12;

///
/// Customization of the grid
///
void bootstrapGridParameters({
  int numberOfColumns = 12,
  double gutterSize = 24,
}) {
  assert(() {
    if (numberOfColumns < 10 || numberOfColumns > 24) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('Invalid number of columns: $numberOfColumns'),
        ErrorHint('The number of columns must be inside the [10; 24] range.'),
      ]);
    }

    if (gutterSize < 0.0 || gutterSize > 96.0) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('Invalid gutter size: $gutterSize'),
        ErrorHint('The gutterSize must be inside the [0.0; 96.0] range.'),
      ]);
    }

    return true;
  }());

  //
  // Memorize the parameters
  //
  _numberOfColumns = numberOfColumns;
  _oneColumnRatio = 1.0 / numberOfColumns;
  _gutterSize = gutterSize;
}

///
/// Returns the definition prefix, based on the available width
///
String bootstrapPrefixBasedOnWidth(double width) {
  String pfx = "";

  if (width > 1200) {
    return "xl";
  }

  if (width > 992) {
    return "lg";
  }

  if (width > 767) {
    return "md";
  }

  if (width > 575) {
    return "sm";
  }

  return pfx;
}

///
/// Returns the max width for non-fluid containers
/// based on a certain provided width
///
double bootstrapMaxWidthNonFluid(double width) {
  ///
  /// Otherwise, it depends on the available width
  ///
  if (width >= 1200) {
    return 1140;
  }
  if (width >= 992) {
    return 960;
  }
  if (width >= 768) {
    return 720;
  }
  if (width >= 576) {
    return 540;
  }

  return width;
}

///
/// Implementation of the Bootstrap .row
///
/// A [BootstrapRow] may only contain [BootstrapCol] children.
///
class BTRow extends StatelessWidget {
  const BTRow({
    super.key,
    required this.children,
    this.decoration,
    this.height,
  });

  ///
  /// Min container height
  ///
  final double? height;

  ///
  /// Any potential BoxDecoration
  ///
  final BoxDecoration? decoration;

  ///
  /// List of the children of type [BootstrapCol]
  ///
  final List<BTCol> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //
        // Get the prefix for the definition, based on the available width
        //
        String pfx = bootstrapPrefixBasedOnWidth(constraints.maxWidth);

        //
        // We need to iterate through all the children and consider any potential order
        //
        List<BTCol> childrenTemp = List.of(children);
        childrenTemp.sort(
          (a, b) => (a.orderPerSize[pfx] ?? 0) - (b.orderPerSize[pfx] ?? 0),
        );

        return Container(
          constraints: BoxConstraints(
            minHeight: height ?? 0.0,
            minWidth: constraints.maxWidth,
            maxWidth: constraints.maxWidth,
          ),
          decoration: decoration,
          child: Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: childrenTemp,
          ),
        );
      },
    );
  }
}

///
/// Returns "something" based on the current dimensions
/// everything is related to browser window
///
/// Example:
/// something = bootStrapValueBasedOnSize(
///   {
///    "xl": "value for xl",
///    "lg": "value for lg",
///    "md": "value for md",
///    "sm": "value for sm",
///    "": "value for xs",
///   },
///   context: context,
/// )
///
/// If the sizes does not contain the corresponding browser prefix,
/// returns the nearest (upper first)
///
bootStrapValueBasedOnSize({
  required Map<String, dynamic> sizes,
  required BuildContext context,
}) {
  //
  // Get the prefix for the definition, based on the available width
  //
  String pfx = bootstrapPrefixBasedOnWidth(MediaQuery.of(context).size.width);

  final int nbPrefixes = _prefixes.length;
  var value = sizes[pfx];

  if (value == null) {
    //
    // No definition was found for this prefix
    //
    int i;
    int idx = _prefixes.indexOf(pfx);

    //
    // Look for the nearest value in higher resolutions
    //
    for (i = idx + 1; i < nbPrefixes; i++) {
      String pfx2 = _prefixesReversed[i];
      if (sizes[pfx2] != null) {
        value = sizes[pfx2];
        break;
      }
    }

    if (value == null) {
      //
      // Look for the nearest value in lower resolutions
      //
      for (int j = i - 1; j > -1; j--) {
        String pfx3 = _prefixesReversed[j];
        if (sizes[pfx3] != null) {
          value = sizes[pfx3];
          break;
        }
      }
    }
  }

  return value;
}
