import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_bootstrap/components/header.dart';
import 'package:get_bootstrap/components/theme_data.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: BootstrapThemeData.light,
      home: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Header(
              elevation: 8,
              backgroundColor: const Color(0xFF712CF9),
              padding: const EdgeInsets.symmetric(vertical: 12),
              collapsedChild: Expanded(
                child: Center(
                    child: Image.asset(
                  'assets/images/bootstrap_logo.webp',
                  height: 42,
                )),
              ),
              child: BTContainer(
                xxl: true,
                child: Row(children: [
                  Image.asset(
                    'assets/images/bootstrap_logo.webp',
                    height: 42,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: BootstrapThemeData.navLinkActive(),
                    child: const Text('Docs'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: BootstrapThemeData.navLink(),
                    child: const Text('Examples'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: BootstrapThemeData.navLink(),
                    child: const Text('Icons'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: BootstrapThemeData.navLink(),
                    child: const Text('Themes'),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: BootstrapThemeData.navLink(),
                    child: const Text('Blog'),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white.withOpacity(0.85),
                      size: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white.withOpacity(0.85),
                      size: 16,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white.withOpacity(0.85),
                      size: 16,
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              child: BTContainer(
                fluid: true,
                child: SingleChildScrollView(
                  child: Column(
                      children: List.generate(
                          200,
                          (index) => const ListTile(
                                title: Text('asdsa'),
                              ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
