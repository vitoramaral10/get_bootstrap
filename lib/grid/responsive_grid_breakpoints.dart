//
// ignore_for_file: prefer-correct-identifier-length

/// A class that represents the breakpoints for a responsive grid system.
class ResponsiveGridBreakpoints {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;

  /// The default instance of [ResponsiveGridBreakpoints].
  static final ResponsiveGridBreakpoints value = ResponsiveGridBreakpoints();

  /// Creates a new instance of [ResponsiveGridBreakpoints].
  ///
  /// The default values for the breakpoints are:
  ///
  /// - `xs`: 576
  /// - `sm`: 768
  /// - `md`: 992
  /// - `lg`: 1200
  /// - `xl`: 1400
  /// - `xxl`: double.infinity
  ResponsiveGridBreakpoints({
    this.xs = 576,
    this.sm = 768,
    this.md = 992,
    this.lg = 1200,
    this.xl = 1400,
    this.xxl = double.infinity,
  });
}
