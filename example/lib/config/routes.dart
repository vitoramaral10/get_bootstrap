import 'package:flutter/cupertino.dart';

import '../pages/docs.dart';
import '../pages/home.dart';

class Routes {
  static String initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> list = {
    '/': (context) => const Home(),
    '/docs': (context) => const Docs(),
  };
}
