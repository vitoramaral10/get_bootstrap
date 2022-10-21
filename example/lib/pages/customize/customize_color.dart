import 'package:flutter/material.dart';
import 'package:get_bootstrap/bootstrap.dart';
import 'package:get_bootstrap/grid/bt_col.dart';
import 'package:get_bootstrap/grid/bt_row.dart';
import 'package:get_bootstrap/helpers/colors.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class CustomizeColor extends StatelessWidget {
  const CustomizeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = Bootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'Color · Bootstrap v5.2',
        child: Scaffold(
          drawer: (!showSidebar) ? const Sidebar() : null,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: BTContainer(
                  xxl: true,
                  child: Row(
                    children: [
                      if (showSidebar) const Sidebar(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 16.0),
                          child: ListView(
                            shrinkWrap: true,
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
                                  'We use a subset of all colors to create a smaller color palette for generating color schemes, also available as variables.',
                                ),
                              ),
                              const ThemePallete(),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'All these colors are available as a BTColor class.',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 32.0),
                                child: Text(
                                  'All colors',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'All Bootstrap colors are available as variables.',
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Be sure to monitor contrast ratios as you customize colors. As shown below, we’ve added three contrast ratios to each of the main colors—one for the swatch’s current colors, one for against white, and one for against black.',
                                ),
                              ),
                              const AllColorsPallete(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HeaderWidget(showSidebarButton: showSidebar),
            ],
          ),
        ),
      );
    });
  }
}

class AllColorsPallete extends StatelessWidget {
  const AllColorsPallete({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BTRow(
      children: [
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.blue,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.blue900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.blue900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.indigo,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo400',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.indigo900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.indigo900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.purple,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.purple900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.purple900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.pink,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.pink900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.pink900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.red,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.red900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.red900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.orange,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange500'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange600'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.orange900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.orange900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.yellow,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow500'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow600'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow700'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.yellow900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.yellow900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.green,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green500',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.green900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.green900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.teal,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal500'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal600'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.teal900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.teal900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.cyan,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan500'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan600'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.cyan900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.cyan900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.gray,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray100,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray100'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray200,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray200'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray300'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray400,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray400'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray500,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray500'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray600,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray600',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray700,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray700',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray800,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray800',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                color: BTColors.gray900,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.gray900',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
        BTCol(
          xxl: 4,
          xl: 4,
          lg: 4,
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                color: BTColors.black,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.black',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color: BTColors.white,
                ),
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('BTColors.white'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ThemePallete extends StatelessWidget {
  const ThemePallete({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BTRow(
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
                child: Text('Primary', style: TextStyle(color: Colors.white)),
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
                child: Text('Secondary', style: TextStyle(color: Colors.white)),
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
                child: Text('Success', style: TextStyle(color: Colors.white)),
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
                child: Text('Danger', style: TextStyle(color: Colors.white)),
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
                child: Text('Dark', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
