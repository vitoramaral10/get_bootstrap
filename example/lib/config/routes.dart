import 'package:flutter/cupertino.dart';

import '../pages/docs.dart';

class Routes {
  static String initialRoute = '/';

  static Map<String, Widget Function(BuildContext)> list = {
    '/': (context) => const Docs(),
  };
}
