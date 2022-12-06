import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';
import 'package:url_launcher/url_launcher.dart';

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
                              const SizedBox(height: 16),
                              Text(
                                'Inclua a dependência',
                                style: GetBootstrap.typography.headline3,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Comece incluindo o pacote em seu projeto Flutter.',
                              ),
                              const SizedBox(height: 8),
                              const Text('Usando o comando do flutter:'),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: HighlightView(
                                      'flutter pub add get_bootstrap',
                                      language: 'shell',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Isso adicionará uma linha como esta ao pubspec.yaml do seu pacote (e executará um flutter pub get implícito):',
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: HighlightView(
                                      '''
dependencies:
    get_bootstrap: ^0.10.0''',
                                      language: 'yaml',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Como alternativa, seu editor pode oferecer suporte ao flutter pub get. Verifique os documentos do seu editor para saber mais.',
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Importe',
                                style: GetBootstrap.typography.headline3,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Agora em seu arquivo, você pode usar:',
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: HighlightView(
                                      "import 'package:get_bootstrap/get_bootstrap.dart';",
                                      language: 'dart',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Comunidade',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Mantenha-se atualizado sobre o desenvolvimento do Bootstrap e alcance a comunidade com esses recursos úteis.',
                              ),
                              const SizedBox(height: 8),
                              Column(children: [
                                RichText(
                                  text: TextSpan(
                                    style: GetBootstrap.typography.bodyText2,
                                    children: [
                                      const TextSpan(
                                        text: '• Pergunte e explore ',
                                      ),
                                      TextSpan(
                                        text: 'nossas discussões no GitHub.',
                                        style: GetBootstrap.typography.link,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            launchUrl(Uri.parse(
                                              'https://github.com/vitoramaral10/get_bootstrap/discussions',
                                            ));
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
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
