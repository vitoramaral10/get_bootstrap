import 'package:bootstrap_example/pages/content/typography_page.dart';
import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/getting-started/introduction_page.dart';

class Routes {
  static const String initialRoute = '/getting-started/introduction';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/getting-started/introduction': (context) => const IntroductionPage(),
    '/customize/color': (context) => const CustomizeColorPage(),
    '/content/typography': (context) => const TypographyPage(),
    '/about/license': (context) => const LicensePage(),
  };
}
