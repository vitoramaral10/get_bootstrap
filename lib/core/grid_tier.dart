import 'package:flutter/material.dart';

import 'models/responsive_breakpoints.dart';

enum GridTier { xs, sm, md, lg, xl, xxl }

GridTier currentSize(BuildContext context) {
  final breakpoints = ResponsiveBreakpoints.value;
  final mediaQueryData = MediaQuery.of(context);
  final width = mediaQueryData.size.width;

  if (width < breakpoints.xs) {
    return GridTier.xs;
  } else if (width < breakpoints.sm) {
    return GridTier.sm;
  } else if (width < breakpoints.md) {
    return GridTier.md;
  } else if (width < breakpoints.lg) {
    return GridTier.lg;
  } else {
    // width >= 1200
    return GridTier.xl;
  }
}
