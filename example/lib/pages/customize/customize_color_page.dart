import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';
import 'widgets/all_colors_pallete.dart';
import 'widgets/theme_pallete.dart';

class CustomizeColorPage extends StatelessWidget {
  const CustomizeColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

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
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text(
                                'Color',
                                style: GetBootstrap.typography.headline1,
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
                                  style: GetBootstrap.typography.headline2,
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
                                  style: GetBootstrap.typography.headline2,
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
