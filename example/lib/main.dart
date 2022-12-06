import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(MaterialApp(
    routes: Routes.list,
    initialRoute: Routes.initialRoute,
    theme: BootstrapThemeData.light.copyWith(
      scaffoldBackgroundColor: BTColors.white,
    ),
    debugShowCheckedModeBanner: false,
  ));
}
