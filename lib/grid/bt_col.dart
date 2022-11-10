part of get_bootstrap;

///
/// Implementation of the Bootstrap .col-*
///
class BTCol extends StatelessWidget {
  final List<String> _prefixes = ['xl', 'lg', 'md', 'sm', ''];
  final List<String> _prefixesReversed = ['', 'sm', 'md', 'lg', 'xl'];

  ///
  /// Sizes
  ///
  /// Corresponds to the Bootstrap classes: .col-*
  ///
  /// Defines the dimensions (in terms of number of columns),
  /// depending on the screen width.
  ///
  /// Example:
  ///   sizes: 'col-12 col-sd-12 col-md-6 col-lg-4 col-xl-4'
  ///
  final List<String>? sizes;

  ///
  /// Offsets (= number of columns) to push this Widget to the right
  ///
  /// Corresponds to the Bootstrap classes: .offset-*
  ///
  /// Example:
  ///   offsets: 'offset-0 offset-sm-1 offset-md-2 offset-lg-3 offset-xl-4'
  ///
  final List<String>? offsets;

  ///
  /// Sequence orders
  ///
  /// Corresponds to the Bootstrap classes: .order-*
  ///
  /// Example:
  ///   orders: 'order-2 order-sm-2 order-md-1 order-lg-1 order-xl-1'
  ///
  final List<String>? orders;

  final double? marginTop;

  BTCol({
    super.key,
    required this.child,
    this.fit = FlexFit.loose,
    this.absoluteSizes = true,
    this.sizes,
    this.offsets,
    this.orders,
    this.invisibleForSizes,
    this.marginTop = 4,
  });

  ///
  /// The child
  ///
  final Widget child;

  /// How a flexible child is inscribed into the available space.
  ///
  /// If [flex] is non-zero, the [fit] determines whether the child fills the
  /// space the parent makes available during layout. If the fit is
  /// [FlexFit.tight], the child is required to fill the available space. If the
  /// fit is [FlexFit.loose], the child can be at most as large as the available
  /// space (but is allowed to be smaller).
  final FlexFit fit;

  ///
  /// Invisibility
  ///
  /// If you want to make this instance invisible for extra-small devices, mention the 'xs'
  ///
  /// Example:
  ///   invisibleForSizes: 'xs xl'
  ///
  final String? invisibleForSizes;

  ///
  /// Do we consider relative dimensions (based on the parent container)
  /// or absolute (based on the browser window)
  /// Default: relative = false
  ///
  final bool absoluteSizes;

  //
  // Flex ratios per size, based on the column's definition
  //
  final Map<String, int> _ratiosPerSize = {
    'xl': 100,
    'lg': 100,
    'md': 100,
    'sm': 100,
    '': 100,
  };

  //
  // Offsets per size, based on the column's definition
  //
  final Map<String, int> _offsetsPerSize = {
    'xl': -100,
    'lg': -100,
    'md': -100,
    'sm': -100,
    '': -100,
  };

  //
  // Sequence order per size, based on the column's definition
  //
  final Map<String, int> orderPerSize = {
    'xl': 0,
    'lg': 0,
    'md': 0,
    'sm': 0,
    '': 0,
  };

  //
  // Sequence order per size, based on the column's definition
  //
  final Map<String, bool> hiddenPerSize = {
    'xl': false,
    'lg': false,
    'md': false,
    'sm': false,
    '': false,
  };

  //
  // Defines the Flex ratios, based on the column's
  // definition, as well as the offsets
  //
  // ignore: long-method
  void _initialize() {
    final int nbPrefixes = _prefixes.length;
//
    // ignore: long-parameter-list
    void initArray({
      List<String>? referenceArgument,
      required Map<String, int> map,
      required String argPrefix,
      required Function minMaxFct,
      int lowerBoundValue = 0,
      required int noValue,
      required int minMaxNoValueReference,
    }) {
      //
      // Identification of the defined "dimensions"
      //
      List<String> parts = referenceArgument == null
          ? []
          : referenceArgument.where((t) => t.trim().isNotEmpty).toList();

      for (var part in parts) {
        for (var pfx in _prefixes) {
          final String prefix = '$argPrefix-$pfx${pfx == "" ? "" : "-"}';
          if (part.startsWith(prefix)) {
            String valString = part.split(prefix).last;
            if (valString != prefix) {
              int? value = int.tryParse(valString);
              if (value != null && value < 13 && value > lowerBoundValue) {
                map[pfx] = minMaxFct(map[pfx], value);
              }
            }
          }
        }
      }

      //
      // As there might be holes, we need to re-adapt
      //
      for (int idx = 0; idx < nbPrefixes; idx++) {
        String pfx = _prefixesReversed[idx];
        int? value = map[pfx];

        if (value == noValue) {
          //
          // No definition was found for this prefix
          //
          int i;

          //
          // Look for the nearest value in higher resolutions
          //
          for (i = idx + 1; i < nbPrefixes; i++) {
            String pfx2 = _prefixesReversed[i];
            if (map[pfx2] != noValue) {
              value = map[pfx2]!;
              break;
            }
          }

          if (value == noValue) {
            //
            // Look for the nearest value in lower resolutions
            //
            for (int j = i - 1; j > -1; j--) {
              String pfx3 = _prefixesReversed[j];
              if (map[pfx3] != noValue) {
                value = map[pfx3]!;
                break;
              }
            }
          }

          map[pfx] = minMaxFct(minMaxNoValueReference, value);
        }
      }
    }

    //
    // First, the sizes (flex => col-*)
    //
    initArray(
      referenceArgument: sizes ?? [],
      map: _ratiosPerSize,
      argPrefix: 'col',
      minMaxFct: math.min,
      noValue: 100,
      minMaxNoValueReference: _numberOfColumns,
    );

    //
    // Then, the offsets (=> offset-*  => marginLeft)
    //
    initArray(
      referenceArgument: offsets,
      map: _offsetsPerSize,
      argPrefix: 'offset',
      minMaxFct: math.max,
      noValue: -100,
      minMaxNoValueReference: 0,
      lowerBoundValue: -1,
    );

    //
    // ... the sequence orders (=> order-*)
    //
    initArray(
      referenceArgument: orders,
      map: orderPerSize,
      argPrefix: 'order',
      minMaxFct: math.max,
      noValue: -100,
      minMaxNoValueReference: 0,
    );

    //
    // Finally, invisibility
    //
    List<String> parts = (invisibleForSizes ?? "").trim().isEmpty
        ? []
        : invisibleForSizes!
            .toLowerCase()
            .split(' ')
            .where((t) => t.trim().isNotEmpty)
            .toList();
    for (var pfx in parts) {
      if (['xl', 'lg', 'md', 'sm', 'xs'].contains(pfx)) {
        hiddenPerSize[pfx == 'xs' ? '' : pfx] = true;
      }
    }
  }

  //
  // Returns the flex ratio % column's definition and available width of
  // the container
  //
  int _getFlexRatio(String prefix) {
    return _ratiosPerSize[prefix]!;
  }

  //
  // Returns the leftMargin % column's definition and available width of
  // the container.  This corresponds to the offset-*
  //
  int _getLeftMarginRatio(String prefix) {
    return _offsetsPerSize[prefix] ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    _initialize();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //
        // Get the prefix for the definition, based on the available width
        //
        String pfx = bootstrapPrefixBasedOnWidth(absoluteSizes
            ? MediaQuery.of(context).size.width
            : constraints.maxWidth);

        //
        // Check if invisible
        //
        bool isInvisible = hiddenPerSize[pfx]!;

        if (isInvisible) {
          return Container();
        }

        //
        //
        // Get the flexible ratio
        //
        int flexRatio = _getFlexRatio(pfx);

        //
        // Get the margin-left (offset)
        //
        int leftMarginRatio = _getLeftMarginRatio(pfx);

        Widget widget = SizedBox(
          width: flexRatio * constraints.maxWidth * _oneColumnRatio,
          child: Padding(
            padding: _gutterSize == 0.0
                ? EdgeInsets.zero
                : EdgeInsets.only(
                    left: _gutterSize / 12,
                    right: _gutterSize / 12,
                    bottom: _gutterSize / 12,
                    top: marginTop ?? _gutterSize / 12,
                  ),
            child: child,
          ),
        );

        if (leftMarginRatio > 0) {
          final double leftMargin =
              constraints.maxWidth * leftMarginRatio * _oneColumnRatio;
          widget = Padding(
            padding: EdgeInsets.only(left: leftMargin),
            child: widget,
          );
        }

        return widget;
      },
    );
  }
}
