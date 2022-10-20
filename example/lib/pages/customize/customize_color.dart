import 'package:flutter/material.dart';
import 'package:get_bootstrap/bootstrap.dart';
import 'package:get_bootstrap/grid/bt_col.dart';
import 'package:get_bootstrap/grid/bt_row.dart';
import 'package:get_bootstrap/helpers/colors.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class CustomizeColor extends StatelessWidget {
  const CustomizeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = Bootstrap.showSidebar(boxConstraints);

      return Scaffold(
        drawer: (!showSidebar) ? const Sidebar() : null,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: Row(
                children: [
                  if (showSidebar) const Sidebar(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: BTRow(
                        children: [
                          BTCol(
                            xl: 3,
                            lg: 1,
                            child: Container(),
                          ),
                          BTCol(
                            xl: 6,
                            lg: 10,
                            md: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Color',
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'Bootstrap is supported by an extensive color system that themes our styles and components. This enables more comprehensive customization and extension for any project.',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32.0),
                                  child: Text(
                                    'Theme colors',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'We use a subset of all colors to create a smaller color palette for generating color schemes, also available as Sass variables and a Sass map in Bootstrap’s scss/_variables.scss file.',
                                  ),
                                ),
                                BTRow(
                                  children: [
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.primary,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Primary',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.secondary,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Secondary',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.success,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Success',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.danger,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Danger',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.warning,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Warning',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.info,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Info',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.light,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Light',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xxl: 4,
                                      xl: 4,
                                      lg: 4,
                                      child: Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(8),
                                        width: double.infinity,
                                        color: BTColors.dark,
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Dark',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'All these colors are available as a Sass map, \$theme-colors.',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const HeaderWidget(),
          ],
        ),
      );
    });
  }
}
