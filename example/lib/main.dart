import 'package:flutter/material.dart';
import 'package:get_bootstrap/components/theme_data.dart';

import 'config/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: BootstrapThemeData.light,
    routes: Routes.list,
    initialRoute: Routes.initialRoute,
  ));
}
