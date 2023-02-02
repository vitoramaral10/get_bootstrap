//
// ignore_for_file: prefer-correct-identifier-length
class ResponsiveGridBreakpoints {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  static final ResponsiveGridBreakpoints value = ResponsiveGridBreakpoints();

  ResponsiveGridBreakpoints({
    this.xs = 576,
    this.sm = 768,
    this.md = 992,
    this.lg = 1200,
    this.xl = 1400,
    this.xxl = double.infinity,
  });
}
