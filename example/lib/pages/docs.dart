import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_bootstrap/components/header.dart';
import 'package:get_bootstrap/components/theme_data.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

import 'widgets/header_widget.dart';

class Docs extends StatelessWidget {
  const Docs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const HeaderWidget(),
          BTContainer(
            xxl: true,
            child: SingleChildScrollView(
              child: Wrap(),
            ),
          ),
        ],
      ),
    );
  }
}
