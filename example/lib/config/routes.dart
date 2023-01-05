import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/components/buttons_page.dart';
import '../pages/content/typography_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/form/form_control_page.dart';
import '../pages/getting-started/introduction_page.dart';
import '../pages/layout/breakpoints_page.dart';
import '../pages/layout/grid_page.dart';

class Routes {
  static const String initialRoute = '/getting-started/introduction';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/getting-started/introduction': (context) => const IntroductionPage(),
    '/customize/color': (context) => const CustomizeColorPage(),
    '/layout/breakpoints': (context) => const BreakpointsPage(),
    '/layout/grid': (context) => const GridPage(),
    '/content/typography': (context) => const TypographyPage(),
    '/components/buttons': (context) => const ButtonsPage(),
    '/forms/form_control': (context) => const FormControlPage(),
    '/about/license': (context) => const LicensePage(),
  };
}
