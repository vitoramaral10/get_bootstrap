part of get_bootstrap;

///
class BootstrapVisibility extends StatelessWidget {
  final Widget child;
  final String sizes;
  final Map<String, bool> _visibilityPerSize = {
    'xl': false,
    'lg': false,
    'md': false,
    'sm': false,
    '': false,
  };

  BootstrapVisibility({
    super.key,
    required this.child,
    String sizes = "",
  }) : sizes = sizes.trim() {
    _initialize();
  }

  void _initialize() {
    List<String> parts = sizes.isEmpty
        ? []
        : sizes
            .toLowerCase()
            .split(' ')
            .where((t) => t.trim().isNotEmpty)
            .toList();
    for (var part in parts) {
      for (var pfx in _prefixes) {
        final String prefix = 'col-$pfx';
        if (part.startsWith(prefix) && pfx != '') {
          _visibilityPerSize[pfx] = true;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String pfx = bootstrapPrefixBasedOnWidth(MediaQuery.of(context).size.width);
    if (pfx == '') {
      pfx = 'xs';
    }

    bool visible = _visibilityPerSize[pfx]!;

    if (!visible) {
      return Container();
    }

    return child;
  }
}
