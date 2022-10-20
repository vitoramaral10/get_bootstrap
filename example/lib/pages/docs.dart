import 'package:flutter/material.dart';
import 'package:get_bootstrap/bootstrap.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

import 'widgets/header_widget.dart';
import 'widgets/sidebar.dart';

class Docs extends StatelessWidget {
  const Docs({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = Bootstrap.showSidebar(boxConstraints);

      return Scaffold(
        drawer: (!showSidebar) ? const Sidebar() : null,
        body: BTContainer(
          child: Row(
            children: [
              if (showSidebar) const Sidebar(),
              Expanded(
                child: Column(
                  children: [
                    const HeaderWidget(),
                    Container(
                      color: Colors.red,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
