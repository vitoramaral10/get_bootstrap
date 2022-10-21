import 'package:flutter/cupertino.dart';

import '../pages/about/license_page.dart';
import '../pages/customize/customize_color_page.dart';
import '../pages/docs.dart';

class Routes {
  static const String initialRoute = '/';

  static final Map<String, Widget Function(BuildContext)> list = {
    '/': (context) => const Docs(),
    '/customize/color': (context) => const CustomizeColorPage(),
    '/about/license': (context) => const LicensePage(),
  };
}
