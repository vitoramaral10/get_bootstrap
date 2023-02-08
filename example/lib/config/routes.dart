import 'package:bootstrap_example/pages/components/modal_page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/components/alerts_page.dart';
import '../pages/components/buttons_page.dart';
import '../pages/content/typography_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/example/sign_in_page.dart';
import '../pages/form/form_control_page.dart';
import '../pages/getting-started/introduction_page.dart';
import '../pages/layout/breakpoints_page.dart';
import '../pages/layout/grid_page.dart';

class Routes {
  static const String initialRoute = '/getting-started/introduction';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/about/license': (context) => const LicensePage(),
    '/components/alerts': (context) => const AlertsPage(),
    '/components/buttons': (context) => const ButtonsPage(),
    '/components/modal': (context) => const ModalPage(),
    '/content/typography': (context) => const TypographyPage(),
    '/customize/color': (context) => const CustomizeColorPage(),
    '/examples/sign_in': (context) => const SignInPage(),
    '/forms/form_control': (context) => const FormControlPage(),
    '/getting-started/introduction': (context) => const IntroductionPage(),
    '/layout/breakpoints': (context) => const BreakpointsPage(),
    '/layout/grid': (context) => const GridPage(),
  };
}
