import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
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
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                bottom: 16.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Tipografia',
                                    style: GetBootstrap.typography.headline1,
                                  ),
                                  Text(
                                    'Documentação e exemplos para tipografia Bootstrap, incluindo configurações globais, títulos, corpo de texto, listas e muito mais.',
                                    style: GetBootstrap.typography.lead,
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Configurações globais',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'O Bootstrap define os estilos básicos de exibição global, tipografia e link. Quando for necessário mais controle, confira as ',
                                          style:
                                              GetBootstrap.typography.bodyText2,
                                        ),
                                        TextSpan(
                                          text:
                                              'classes de utilitários textuais.',
                                          style: GetBootstrap.typography.link,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushNamed(
                                                context,
                                                '/utilities/text',
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• Para uma escala de tipo mais inclusiva e acessível, usamos a raiz padrão font-size (16px) para que os visitantes possam personalizar os padrões do navegador conforme necessário.',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Títulos',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      'Todos os cabeçalhos disponíveis.',
                                    ),
                                  ),
                                  BTTable(
                                    head: const ['Cabeçalho', 'Exemplo'],
                                    body: [
                                      [
                                        const BTCell(child: Text('headline1')),
                                        BTCell(
                                          child: Text(
                                            'h1. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline1,
                                          ),
                                        ),
                                      ],
                                      [
                                        const BTCell(child: Text('headline2')),
                                        BTCell(
                                          child: Text(
                                            'h2. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline2,
                                          ),
                                        ),
                                      ],
                                      [
                                        const BTCell(child: Text('headline3')),
                                        BTCell(
                                          child: Text(
                                            'h3. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline3,
                                          ),
                                        ),
                                      ],
                                      [
                                        const BTCell(child: Text('headline4')),
                                        BTCell(
                                          child: Text(
                                            'h4. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline4,
                                          ),
                                        ),
                                      ],
                                      [
                                        const BTCell(child: Text('headline5')),
                                        BTCell(
                                          child: Text(
                                            'h5. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline5,
                                          ),
                                        ),
                                      ],
                                      [
                                        const BTCell(child: Text('headline6')),
                                        BTCell(
                                          child: Text(
                                            'h6. Título de inicialização',
                                            style: GetBootstrap
                                                .typography.headline6,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    child: BTCard(
                                      bodyPadding: EdgeInsets.zero,
                                      body: HighlightView(
                                        'Text("h1. Título de inicialização", style: GetBootstrap.typography.headline1),\n\nText("h2. Título de inicialização", style: GetBootstrap.typography.headline2),\n\nText("h3. Título de inicialização", style: GetBootstrap.typography.headline3),\n\nText("h4. Título de inicialização", style: GetBootstrap.typography.headline4),\n\nText("h5. Título de inicialização", style: GetBootstrap.typography.headline5),\n\nText("h6. Título de inicialização", style: GetBootstrap.typography.headline6),',
                                        language: 'dart',
                                        theme: foundationTheme,
                                        padding: const EdgeInsets.all(16),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Display',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      'Os elementos de título tradicionais são projetados para funcionar melhor na carne do conteúdo da sua página. Quando você precisar que um título se destaque, considere usar um display — um estilo de título maior e um pouco mais opinativo.',
                                    ),
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: BTTable(
                                      body: [
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 1',
                                              style: GetBootstrap
                                                  .typography.display1,
                                            ),
                                          ),
                                        ],
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 2',
                                              style: GetBootstrap
                                                  .typography.display2,
                                            ),
                                          ),
                                        ],
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 3',
                                              style: GetBootstrap
                                                  .typography.display3,
                                            ),
                                          ),
                                        ],
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 4',
                                              style: GetBootstrap
                                                  .typography.display4,
                                            ),
                                          ),
                                        ],
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 5',
                                              style: GetBootstrap
                                                  .typography.display5,
                                            ),
                                          ),
                                        ],
                                        [
                                          BTCell(
                                            child: Text(
                                              'Display 6',
                                              style: GetBootstrap
                                                  .typography.display6,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                    footerPadding: EdgeInsets.zero,
                                    footer: HighlightView(
                                      'Text(\n    "Display 1",\n    style: GetBootstrap.typography.display1,\n),',
                                      language: 'dart',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Lead',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      'Faça um parágrafo se destacar adicionando .lead.',
                                    ),
                                  ),
                                  BTCard(
                                    body: Text(
                                      'Este é um parágrafo inicial. Destaca-se de parágrafos regulares.',
                                      style: GetBootstrap.typography.lead,
                                    ),
                                    footerPadding: EdgeInsets.zero,
                                    footerBackground: BTColors.gray100,
                                    footer: HighlightView(
                                      'Text(\n    "Este é um parágrafo inicial. Destaca-se de parágrafos regulares.",\n    style: GetBootstrap.typography.lead,\n),',
                                      language: 'dart',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Elementos de texto embutidos',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      'Estilização para elementos inline comuns.',
                                    ),
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Esta linha mostra o texto padrão.',
                                        ),
                                        const Text(
                                          'Esta linha de texto deve ser tratada como texto excluído.',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        const Text(
                                          'Esta linha de texto será renderizada como sublinhada.',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                        Text(
                                          'Esta linha de texto deve ser tratada como letras miúdas.',
                                          style: GetBootstrap.typography.small,
                                        ),
                                        const Text(
                                          'Esta linha renderizada como texto em negrito.',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Text(
                                          'Esta linha renderizada como texto em itálico.',
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                    footerPadding: EdgeInsets.zero,
                                    footer: HighlightView(
                                      'Text("Esta linha mostra o texto padrão."),\n\nText(\n   "Esta linha de texto deve ser tratada como texto excluído.",\n   style: TextStyle(\n     decoration: TextDecoration.lineThrough,\n   ),\n),\n\nText(\n   "Esta linha de texto será renderizada como sublinhada.",\n   style: TextStyle(\n     decoration: TextDecoration.underline,\n   ),\n),\n\nText(\n   "Esta linha de texto deve ser tratada como letras miúdas.",\n   style: GetBootstrap.typography.small,\n),\n\nText(\n   "Esta linha renderizada como texto em negrito.",\n   style: TextStyle(fontWeight: FontWeight.bold,),\n),\n\nText(\n   "Esta linha renderizada como texto em itálico.",\n   style: TextStyle(fontStyle: FontStyle.italic,),\n),',
                                      language: 'dart',
                                      theme: foundationTheme,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      'Esteja ciente de que esses estilos devem ser usados para fins semânticos:',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• {small} representa comentários laterais e letras pequenas, como direitos autorais e texto legal.',
                                        ),
                                        Text(
                                          '• {lineThrough} representa elementos que não são mais relevantes ou não são mais precisos.',
                                        ),
                                        Text(
                                          '• {underline} representa um intervalo de texto embutido que deve ser renderizado de forma a indicar que possui uma anotação não textual.',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Utilitários de texto',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Altere o alinhamento do texto, transforme, estilo, peso, altura da linha, decoração e cor com nossos ',
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                          ),
                                          TextSpan(
                                            text: 'utilitários de texto',
                                            style: GetBootstrap.typography.link,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/utilities/text',
                                                );
                                              },
                                          ),
                                          TextSpan(
                                            text: ' e ',
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                          ),
                                          TextSpan(
                                            text: 'utilitários de cores.',
                                            style: GetBootstrap.typography.link,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/utilities/colors',
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
                            const FooterWidget(),
                          ],
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
