import 'package:flutter/material.dart';
import 'package:get_bootstrap/components/table.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'Typography · Bootstrap v5.2',
        child: Scaffold(
          drawer: (!showSidebar) ? const Sidebar() : null,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: BTContainer(
                  xxl: true,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Typography',
                                style: GetBootstrap.typography.headline1,
                              ),
                              Text(
                                'Documentation and examples for Bootstrap typography, including global settings, headings, body text, lists, and more.',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Global settings',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Bootstrap sets basic global display, typography, and link styles. When more control is needed, check out the textual utility classes.',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '• Use a native font stack that selects the best font-family for each OS and device.',
                                    ),
                                    Text(
                                      '• For a more inclusive and accessible type scale, we use the browser’s default root font-size (typically 16px) so visitors can customize their browser defaults as needed.',
                                    ),
                                    Text(
                                      '• Use the \$font-family-base, \$font-size-base, and \$line-height-base attributes as our typographic base applied to the <body>.',
                                    ),
                                    Text(
                                      '• Set the global link color via \$link-color.',
                                    ),
                                    Text(
                                      '• Use \$body-bg to set a background-color on the <body> (#fff by default).',
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                'These styles can be found within _reboot.scss, and the global variables are defined in _variables.scss. Make sure to set \$font-size-base in rem.',
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Headings',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  'All HTML headings, <h1> through <h6>, are available.',
                                ),
                              ),
                              BTTable(
                                head: const ['Heading', 'Example'],
                                body: [
                                  [
                                    const Text('headline1'),
                                    Text(
                                      'h1. Bootstrap heading',
                                      style: GetBootstrap.typography.headline1,
                                    ),
                                  ],
                                  [
                                    const Text('headline2'),
                                    Text(
                                      'h2. Bootstrap heading',
                                      style: GetBootstrap.typography.headline2,
                                    ),
                                  ],
                                  [
                                    const Text('headline3'),
                                    Text(
                                      'h3. Bootstrap heading',
                                      style: GetBootstrap.typography.headline3,
                                    ),
                                  ],
                                  [
                                    const Text('headline4'),
                                    Text(
                                      'h4. Bootstrap heading',
                                      style: GetBootstrap.typography.headline4,
                                    ),
                                  ],
                                  [
                                    const Text('headline5'),
                                    Text(
                                      'h5. Bootstrap heading',
                                      style: GetBootstrap.typography.headline5,
                                    ),
                                  ],
                                  [
                                    const Text('headline6'),
                                    Text(
                                      'h6. Bootstrap heading',
                                      style: GetBootstrap.typography.headline6,
                                    ),
                                  ],
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  '.h1 through .h6 classes are also available, for when you want to match the font styling of a heading but cannot use the associated HTML element.',
                                ),
                              ),
                              BTCard(
                                footerBackground: BTColors.gray100,
                                body: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'h1. Bootstrap heading',
                                      style: GetBootstrap.typography.headline1,
                                    ),
                                    Text(
                                      'h2. Bootstrap heading',
                                      style: GetBootstrap.typography.headline2,
                                    ),
                                    Text(
                                      'h3. Bootstrap heading',
                                      style: GetBootstrap.typography.headline3,
                                    ),
                                    Text(
                                      'h4. Bootstrap heading',
                                      style: GetBootstrap.typography.headline4,
                                    ),
                                    Text(
                                      'h5. Bootstrap heading',
                                      style: GetBootstrap.typography.headline5,
                                    ),
                                    Text(
                                      'h6. Bootstrap heading',
                                      style: GetBootstrap.typography.headline6,
                                    ),
                                  ],
                                ),
                                footer: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SelectionArea(
                                      child: Text(
                                        'Text(\n    "h1. Bootstrap heading",\n    style: GetBootstrap.typography.headline1,\n),',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Display headings',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  'Traditional heading elements are designed to work best in the meat of your page content. When you need a heading to stand out, consider using a display heading—a larger, slightly more opinionated heading style.',
                                ),
                              ),
                              BTCard(
                                footerBackground: BTColors.gray100,
                                body: BTTable(
                                  body: [
                                    [
                                      Text(
                                        'Display 1',
                                        style: GetBootstrap.typography.display1,
                                      ),
                                    ],
                                    [
                                      Text(
                                        'Display 2',
                                        style: GetBootstrap.typography.display2,
                                      ),
                                    ],
                                    [
                                      Text(
                                        'Display 3',
                                        style: GetBootstrap.typography.display3,
                                      ),
                                    ],
                                    [
                                      Text(
                                        'Display 4',
                                        style: GetBootstrap.typography.display4,
                                      ),
                                    ],
                                    [
                                      Text(
                                        'Display 5',
                                        style: GetBootstrap.typography.display5,
                                      ),
                                    ],
                                    [
                                      Text(
                                        'Display 6',
                                        style: GetBootstrap.typography.display6,
                                      ),
                                    ],
                                  ],
                                ),
                                footer: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SelectionArea(
                                      child: Text(
                                        'Text(\n    "Display 1",\n    style: GetBootstrap.typography.display1,\n),',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Display headings are configured via the \$display-font-sizes Sass map and two variables, \$display-font-weight and \$display-line-height.',
                                ),
                              ),
                              const Text(
                                'Display headings are customizable via two variables, \$display-font-family and \$display-font-style.',
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Lead',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  'Make a paragraph stand out by adding .lead.',
                                ),
                              ),
                              const BTCard(
                                footerBackground: BTColors.gray100,
                                body: Text(
                                  'This is a lead paragraph. It stands out from regular paragraphs.',
                                ),
                              ),
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
