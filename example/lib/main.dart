import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import 'config/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      routes: Routes.list,
      initialRoute: Routes.initialRoute,
      theme: BootstrapThemeData.light.copyWith(
        scaffoldBackgroundColor: BTColors.white,
      ),
      darkTheme: BootstrapThemeData.dark,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    ),
  );
}
