import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        title: 'License FAQs · Bootstrap v5.2',
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
                              const SizedBox(height: 32),
                              Text(
                                'Comece com o Bootstrap',
                                style: GetBootstrap.typography.headline1,
                              ),
                              Text(
                                'Bootstrap é um poderoso kit de ferramentas de front-end repleto de recursos. Construa qualquer coisa – do protótipo à produção – em minutos.',
                                style: GetBootstrap.typography.lead,
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Começo rápido',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Comece incluindo CSS e JavaScript prontos para produção do Bootstrap via CDN sem a necessidade de etapas de compilação. Veja na prática com esta demonstração do Bootstrap CodePen .',
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
