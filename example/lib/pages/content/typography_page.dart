import 'package:flutter/material.dart';
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
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
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
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
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
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              const Text(
                                'All HTML headings, <h1> through <h6>, are available.',
                              ),
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  final rowHeight =
                                      (constraints.maxHeight - 40) / 6;

                                  return DataTable(
                                    dataRowHeight: rowHeight,
                                    headingRowHeight: 40,
                                    columns: const [
                                      DataColumn(
                                        label: Text('Heading'),
                                      ),
                                      DataColumn(
                                        label: Text('Example'),
                                      ),
                                    ],
                                    rows: [
                                      DataRow(cells: [
                                        const DataCell(Text('heading1')),
                                        DataCell(Text(
                                          'h1. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        )),
                                      ]),
                                      DataRow(cells: [
                                        const DataCell(Text('heading2')),
                                        DataCell(Text(
                                          'h2. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        )),
                                      ]),
                                      DataRow(cells: [
                                        const DataCell(Text('heading3')),
                                        DataCell(Text(
                                          'h3. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        )),
                                      ]),
                                      DataRow(cells: [
                                        const DataCell(Text('heading4')),
                                        DataCell(Text(
                                          'h4. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        )),
                                      ]),
                                      DataRow(cells: [
                                        const DataCell(Text('heading5')),
                                        DataCell(Text(
                                          'h5. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5,
                                        )),
                                      ]),
                                      DataRow(cells: [
                                        const DataCell(Text('heading6')),
                                        DataCell(Text(
                                          'h6. Bootstrap heading',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        )),
                                      ]),
                                    ],
                                  );
                                },
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
