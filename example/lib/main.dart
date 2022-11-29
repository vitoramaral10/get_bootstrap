import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import 'config/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: BootstrapThemeData.light.copyWith(),
    routes: Routes.list,
    initialRoute: Routes.initialRoute,
  ));
}
