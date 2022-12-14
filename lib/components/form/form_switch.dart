part of get_bootstrap;

class FormSwitch extends StatefulWidget {
  final bool value;
  final Widget? label;
  final bool reverse;
  final bool disabled;
  final Color backgroundColor;
  final Color foregroundColor;
  final ValueChanged<bool>? onChanged;

  const FormSwitch({
    Key? key,
    required this.value,
    this.label,
    this.reverse = false,
    this.disabled = false,
    this.backgroundColor = BTColors.primary,
    this.foregroundColor = BTColors.white,
    this.onChanged,
  }) : super(key: key);

  @override
  //
  // ignore: library_private_types_in_public_api
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<FormSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _circleAnimation = AlignmentTween(
      begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
      end: widget.value ? Alignment.centerLeft : Alignment.centerRight,
    ).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.linear),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !widget.disabled
          ? () {
              if (_animationController!.isCompleted) {
                _animationController!.reverse();
              } else {
                _animationController!.forward();
              }

              if (widget.onChanged != null) {
                !widget.value
                    ? widget.onChanged!(true)
                    : widget.onChanged!(false);
              }
            }
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.reverse && widget.label != null)
            Flexible(
              child: widget.label!,
            ),
          if (widget.reverse && widget.label != null) const SizedBox(width: 8),
          AnimatedBuilder(
            animation: _animationController!,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  color: !widget.value
                      ? Colors.transparent
                      : widget.disabled
                          ? widget.backgroundColor.withAlpha(128)
                          : widget.backgroundColor,
                  border: Border.fromBorderSide(BorderSide(
                    color: !widget.value
                        ? widget.disabled
                            ? BTColors.black.withAlpha(40)
                            : BTColors.black.withAlpha(64)
                        : widget.disabled
                            ? Colors.transparent
                            : widget.backgroundColor,
                  )),
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                ),
                width: 32.0,
                height: 16.0,
                child: Container(
                  alignment: _circleAnimation!.value,
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: !widget.value
                          ? widget.disabled
                              ? BTColors.black.withAlpha(40)
                              : BTColors.black.withAlpha(64)
                          : widget.foregroundColor,
                      shape: BoxShape.circle,
                    ),
                    width: 12.0,
                    height: 12.0,
                  ),
                ),
              );
            },
          ),
          if (!widget.reverse && widget.label != null) const SizedBox(width: 8),
          if (!widget.reverse && widget.label != null)
            Flexible(
              child: widget.label!,
            ),
        ],
      ),
    );
  }
}
