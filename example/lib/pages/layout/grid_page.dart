import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        title: 'Grid · Bootstrap v5.2',
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
                                'Grid',
                                style: GetBootstrap.typography.headline1,
                              ),
                              Text(
                                'Use nossa poderosa grade flexbox móvel para criar layouts de todas as formas e tamanhos, graças a um sistema de doze colunas, seis níveis responsivos padrão, variáveis ​e dezenas de classes predefinidas.',
                                style: GetBootstrap.typography.lead,
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Exemplo',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'O sistema de grade do Bootstrap usa uma série de contêineres, linhas e colunas para fazer o layout e alinhar o conteúdo. É totalmente responsivo. Abaixo está um exemplo e uma explicação detalhada de como o sistema de grade vem junto.',
                              ),
                              const SizedBox(height: 8),
                              BTCard(
                                body: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: BTRow(children: [
                                    BTCol(
                                      sizes: const ['col-4'],
                                      marginLeft: 0,
                                      marginRight: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFf1eafe),
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                              color: Color(0xFFd2bbfe),
                                            ),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text('Coluna'),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      sizes: const ['col-4'],
                                      marginLeft: 0,
                                      marginRight: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFf1eafe),
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                              color: Color(0xFFd2bbfe),
                                            ),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text('Coluna'),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      sizes: const ['col-4'],
                                      marginLeft: 0,
                                      marginRight: 0,
                                      child: Container(
                                        padding: const EdgeInsets.all(12),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFf1eafe),
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                              color: Color(0xFFd2bbfe),
                                            ),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text('Coluna'),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                footer: HighlightView(
                                  '''
BTRow(
    children: [
        BTCol(
            sizes: const ['col-4'],
            child: const Center(
                  child: Text('Coluna'),
            ),
        ),
        BTCol(
            sizes: const ['col-4'],
            child: const Center(
                  child: Text('Coluna'),
            ),
        ),
        BTCol(
            sizes: const ['col-4'],
            child: const Center(
                  child: Text('Coluna'),
            ),
        ),
    ],
),''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                ),
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'O exemplo acima cria três colunas de largura igual em todos os dispositivos e viewports usando nossas classes de grade predefinidas.',
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Como funciona',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Dividindo-o, aqui está como o sistema de grade vem junto:',
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                  style: GetBootstrap.typography.bodyText2,
                                  children: [
                                    const TextSpan(
                                      text: '• Nossa grade suporta ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'seis breakpoints responsivos.',
                                      style: GetBootstrap.typography.link!
                                          .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushNamed(
                                            context,
                                            '/layout/breakpoints',
                                          );
                                        },
                                    ),
                                    const TextSpan(
                                      text:
                                          ' Os pontos de interrupção são baseados em ',
                                    ),
                                    TextSpan(
                                      text: 'min-width',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' consultas de mídia, o que significa que afetam esse ponto de interrupção e todos os que estão acima dele (por exemplo, ',
                                    ),
                                    TextSpan(
                                      text: 'col-sm-4',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' aplica-se a ',
                                    ),
                                    TextSpan(
                                      text: 'sm, md, lg, xl e xxl',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          '). Isso significa que você pode controlar o dimensionamento e o comportamento do contêiner e da coluna em cada ponto de interrupção.',
                                    ),
                                  ],
                                ),
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
