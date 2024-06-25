/// The `get_bootstrap` library provides a set of components and utilities for building Flutter applications with a Bootstrap-like style.
library get_bootstrap;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/card/body.dart';
import 'components/card/footer.dart';
import 'components/card/head.dart';
import 'core/bt_typography.dart';
import 'grid/responsive_grid_breakpoints.dart';

part 'components/bootstrap_theme_data.dart';
part 'components/bt_alert.dart';
part 'components/buttons/bt_button.dart';
part 'components/buttons/bt_button_outline.dart';
part 'components/card/bt_card.dart';
part 'components/form/form_checkbox.dart';
part 'components/form/form_group.dart';
part 'components/form/form_group_file.dart';
part 'components/form/form_group_inline.dart';
part 'components/form/form_group_inline_plain_text.dart';
part 'components/form/form_group_inline_select.dart';
part 'components/form/form_group_plain_text.dart';
part 'components/form/form_group_select.dart';
part 'components/form/form_switch.dart';
part 'components/modals/bt_modal.dart';
part 'components/sidebar/bt_sidebar.dart';
part 'components/sidebar/bt_sidebar_group.dart';
part 'enums/alert_style.dart';
part 'enums/size.dart';
part 'formatters/bootstrap_formatter.dart';
part 'formatters/first_letter_upper_case_formatter.dart';
part 'formatters/upper_case_text_formatter.dart';
part 'grid/bt_row.dart';
part 'helpers/bt_colors.dart';
part 'layout/bt_container.dart';

/// The main class of the `get_bootstrap` library.
class GetBootstrap {
  static final BTTypography typography = BTTypography();

  /// Determines whether to show the sidebar based on the screen width.
  ///
  /// Returns `true` if the sidebar should be shown, `false` otherwise.
  static bool showSidebar(final BoxConstraints boxConstraints) =>
      ['xxl', 'xl', 'lg'].contains(getLayoutSize(boxConstraints));

  /// Returns the layout size based on the screen width in pixels.
  ///
  /// The layout size can be one of the following values: 'xs', 'sm', 'md', 'lg', 'xl', 'xxl'.
  static String getLayoutSize(final BoxConstraints boxConstraints) {
    const int xsWidth = 576;
    const int smWidth = 768;
    const int mdWidth = 992;
    const int lgWidth = 1200;
    const int xlWidth = 1400;

    if (boxConstraints.maxWidth < xsWidth) {
      return 'xs';
    } else if (boxConstraints.maxWidth < smWidth &&
        boxConstraints.maxWidth >= xsWidth) {
      return 'sm';
    } else if (boxConstraints.maxWidth < mdWidth &&
        boxConstraints.maxWidth >= smWidth) {
      return 'md';
    } else if (boxConstraints.maxWidth < lgWidth &&
        boxConstraints.maxWidth >= mdWidth) {
      return 'lg';
    } else if (boxConstraints.maxWidth < xlWidth &&
        boxConstraints.maxWidth >= lgWidth) {
      return 'xl';
    } else {
      return 'xxl';
    }
  }
}
