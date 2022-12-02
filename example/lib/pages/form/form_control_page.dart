import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class FormControlPage extends StatefulWidget {
  const FormControlPage({super.key});

  @override
  State<FormControlPage> createState() => _FormControlPageState();
}

class _FormControlPageState extends State<FormControlPage> {
  String fileName = '';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        title: 'Form controls · Bootstrap v5.2',
        color: BTColors.purple,
        child: Scaffold(
          body: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: BTContainer(
                xxl: true,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showSidebar) const Sidebar(),
                    Expanded(
                      child: ListView(shrinkWrap: true, children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BTCard(
                                body: FormGroupFile(
                                  title: 'Default file input example',
                                  fileName: fileName,
                                  onPressed: () async {
                                    FilePickerResult? result =
                                        await FilePicker.platform.pickFiles();
                                    setState(() {
                                      fileName = result!.files.first.name;
                                    });
                                  },
                                ),
                                footer: HighlightView(
                                  '''
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                ),
                                footerBackground: BTColors.gray100,
                                bodyPadding: const EdgeInsets.all(24),
                                footerPadding: const EdgeInsets.all(0),
                              ),
                            ],
                          ),
                        ),
                        const FooterWidget(),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            HeaderWidget(showSidebarButton: showSidebar),
          ]),
          drawer: (!showSidebar) ? const Sidebar() : null,
        ),
      );
    });
  }
}
