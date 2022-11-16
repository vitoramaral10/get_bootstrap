library get_bootstrap;

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/bt_typography.dart';

part 'components/bootstrap_theme_data.dart';
part 'components/bt_card.dart';
part 'components/buttons/bt_button.dart';
part 'components/buttons/bt_button_outline.dart';
part 'components/form/form_group.dart';
part 'components/form/form_group_inline.dart';
part 'components/form/form_group_inline_plain_text.dart';
part 'components/form/form_group_plain_text.dart';
part 'components/table/bt_cell.dart';
part 'components/table/bt_table.dart';
part 'components/sidebar/bt_sidebar.dart';
part 'components/sidebar/bt_sidebar_group.dart';
part 'grid/bootstrap_visibility.dart';
part 'grid/bt_col.dart';
part 'grid/bt_row.dart';
part 'helpers/bt_colors.dart';
part 'layout/bt_container.dart';

class GetBootstrap {
  static final BTTypography typography = BTTypography();
  static final ThemeData themeData = BootstrapThemeData.light;

  /// Informa se pode mostrar o menu lateral conforme a largura da tela.
  static bool showSidebar(BoxConstraints boxConstraints) {
    return ['xxl', 'xl', 'lg'].contains(getLayoutSize(boxConstraints));
  }

  /// Informa o tamanho da tela com base na largura de pixels da mesma.
  static String getLayoutSize(BoxConstraints boxConstraints) {
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
