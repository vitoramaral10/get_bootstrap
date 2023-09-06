part of '../get_bootstrap.dart';

class BTAlert extends StatelessWidget {
  final AlertStyle alertStyle;
  final Widget child;
  final VoidCallback? dismissPressed;

  const BTAlert({
    required this.child,
    super.key,
    this.alertStyle = AlertStyle.primary,
    this.dismissPressed,
  });

  Color _getTextColor() {
    switch (alertStyle) {
      case AlertStyle.primary:
        return BTColors.blue600;
      case AlertStyle.secondary:
        return BTColors.gray600;
      case AlertStyle.success:
        return BTColors.green600;
      case AlertStyle.danger:
        return BTColors.red600;
      case AlertStyle.warning:
        return BTColors.yellow700;
      case AlertStyle.info:
        return BTColors.cyan700;
      case AlertStyle.light:
        return BTColors.gray600;
      case AlertStyle.dark:
        return BTColors.gray700;
    }
  }

  Color _getBackgroundColor() {
    switch (alertStyle) {
      case AlertStyle.primary:
        return BTColors.blue100;
      case AlertStyle.secondary:
        return BTColors.gray100;
      case AlertStyle.success:
        return BTColors.green100;
      case AlertStyle.danger:
        return BTColors.red100;
      case AlertStyle.warning:
        return BTColors.yellow100;
      case AlertStyle.info:
        return BTColors.cyan100;
      case AlertStyle.light:
        return BTColors.gray100;
      case AlertStyle.dark:
        return BTColors.gray400;
    }
  }

  Color _getBorderColor() {
    switch (alertStyle) {
      case AlertStyle.primary:
        return BTColors.blue200;
      case AlertStyle.secondary:
        return BTColors.gray200;
      case AlertStyle.success:
        return BTColors.green200;
      case AlertStyle.danger:
        return BTColors.red200;
      case AlertStyle.warning:
        return BTColors.yellow200;
      case AlertStyle.info:
        return BTColors.cyan200;
      case AlertStyle.light:
        return BTColors.gray200;
      case AlertStyle.dark:
        return BTColors.gray500;
    }
  }

  @override
  Widget build(final BuildContext context) => Material(
        textStyle: BTTypography().bodyText2?.copyWith(
              color: _getTextColor(),
            ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _getBackgroundColor(),
            border: Border.fromBorderSide(
              BorderSide(
                color: _getBorderColor(),
              ),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: Row(
            children: [
              Expanded(
                child: child,
              ),
              if (dismissPressed != null)
                InkWell(
                  onTap: dismissPressed,
                  child: Icon(
                    Icons.close,
                    color: _getTextColor(),
                  ),
                ),
            ],
          ),
        ),
      );
}
