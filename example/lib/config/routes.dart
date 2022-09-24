import 'package:bootstrap_example/pages/docs.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static String initialRoute = '/docs';

  static Map<String, Widget Function(BuildContext)> list = {
    '/docs': (context) => const Docs(),
  };
}
