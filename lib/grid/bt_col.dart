part of get_bootstrap;

class BTCol extends StatelessWidget {
  final _config = <int?>[]..length = 6;
  final Widget child;

  BTCol({
    int xs = 12,
    int? sm,
    int? md,
    int? lg,
    int? xl,
    int? xxl,
    required this.child,
    Key? key,
  }) : super(key: key) {
    _config[GridTier.xs.index] = xs;
    _config[GridTier.sm.index] = sm ?? _config[GridTier.xs.index];
    _config[GridTier.md.index] = md ?? _config[GridTier.sm.index];
    _config[GridTier.lg.index] = lg ?? _config[GridTier.md.index];
    _config[GridTier.xl.index] = xl ?? _config[GridTier.lg.index];
    _config[GridTier.xxl.index] = xxl ?? _config[GridTier.xl.index];
  }

  int? currentConfig(BuildContext context) {
    return _config[currentSize(context).index];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: currentConfig(context) ?? 1,
      child: child,
    );
  }
}
