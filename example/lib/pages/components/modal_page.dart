import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final boxConstraints) {
          final bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

          return Title(
            title: 'Modal · Bootstrap v5.2',
            color: BTColors.purple,
            child: Scaffold(
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
                                    left: 16,
                                    right: 16,
                                    bottom: 16,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 32),
                                      Text(
                                        'Modal',
                                        style:
                                            GetBootstrap.typography.headline1,
                                      ),
                                      Text(
                                        'Use o plug-in modal JavaScript do Bootstrap para adicionar caixas de diálogo ao seu site para lightboxes, notificações do usuário ou conteúdo totalmente personalizado.',
                                        style: GetBootstrap.typography.lead,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Exemplos',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Componentes modais',
                                        style:
                                            GetBootstrap.typography.headline3,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          'Abaixo está um exemplo modal estático. Estão incluídos o cabeçalho, o corpo (obrigatório para padding) e o rodapé (opcional). Pedimos que você inclua cabeçalhos com ações de dispensa sempre que possível ou forneça outra ação de dispensa explícita.',
                                        ),
                                      ),
                                      BTCard(
                                        body: BTModal(
                                          elevation: 0,
                                          head: Row(
                                            children: [
                                              const Text('Título modal'),
                                              const Spacer(),
                                              InkWell(
                                                onTap: () {
                                                  log('');
                                                },
                                                child: const Icon(Icons.close),
                                              ),
                                            ],
                                          ),
                                          body: const Text(
                                            'O corpo do texto modal vai aqui.',
                                          ),
                                          footer: Row(
                                            children: [
                                              const Spacer(),
                                              BTButton(
                                                onPressed: () {
                                                  log('');
                                                },
                                                backgroundColor:
                                                    BTColors.secondary,
                                                child: const Text('Fechar'),
                                              ),
                                              BTButton(
                                                onPressed: () {
                                                  log('');
                                                },
                                                child: const Text(
                                                  'Salvar alterações',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        footer: HighlightView(
                                          '''
BTModal(
  elevation: 0,
  head: Row(
    children: [
      const Text('Título modal'),
      const Spacer(),
      InkWell(
        onTap: () {
          log('');
        },
        child: const Icon(Icons.close),
      ),
    ],
  ),
  body: const Text(
    'O corpo do texto modal vai aqui.',
  ),
  footer: Row(children: [
    const Spacer(),
    BTButton(
      onPressed: () {
        log('');
      },
      backgroundColor: BTColors.secondary,
      child: const Text('Fechar'),
    ),
    BTButton(
      onPressed: () {
        log('');
      },
      child: const Text('Salvar alterações'),
    ),
  ]),
)
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        bodyBackground: BTColors.gray100,
                                        footerBackground: BTColors.gray100,
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Demonstração ao vivo',
                                        style:
                                            GetBootstrap.typography.headline3,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          'Alterne uma demonstração modal funcional clicando no botão abaixo. Ele deslizará para baixo e desaparecerá do topo da página.',
                                        ),
                                      ),
                                      BTCard(
                                        body: Row(
                                          children: [
                                            BTButton(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (final builder) =>
                                                      BTModal(
                                                    head: Row(
                                                      children: [
                                                        const Text(
                                                          'Título modal',
                                                        ),
                                                        const Spacer(),
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          child: const Icon(
                                                            Icons.close,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    body: const Text(
                                                      'Woo-hoo, você está lendo este texto em um modal!',
                                                    ),
                                                    footer: Row(
                                                      children: [
                                                        const Spacer(),
                                                        BTButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          backgroundColor:
                                                              BTColors
                                                                  .secondary,
                                                          child: const Text(
                                                            'Fechar',
                                                          ),
                                                        ),
                                                        BTButton(
                                                          onPressed: () {
                                                            log('');
                                                          },
                                                          child: const Text(
                                                            'Salvar alterações',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                'Iniciar modo de demostração',
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (builder) {
        return BTModal(
          head: Row(
            children: [
              const Text('Título modal'),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                    const Icon(Icons.close),
              ),
            ],
          ),
          body: const Text(
            'Woo-hoo, você está lendo este texto em um modal!',
          ),
          footer: Row(children: [
            const Spacer(),
            BTButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor:
                  BTColors.secondary,
              child: const Text('Fechar'),
            ),
            BTButton(
              onPressed: () {
                log('');
              },
              child: const Text(
                'Salvar alterações',
              ),
            ),
          ]),
        );
      },
    );
  },
  child: const Text(
    'Iniciar modo de demostração',
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        bodyBackground: BTColors.gray100,
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(16),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Demonstração ao vivo',
                                        style:
                                            GetBootstrap.typography.headline3,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          'Alterne uma demonstração modal funcional clicando no botão abaixo. Ele deslizará para baixo e desaparecerá do topo da página.',
                                        ),
                                      ),
                                      BTCard(
                                        body: Row(
                                          children: [
                                            BTButton(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (final builder) =>
                                                      BTModal(
                                                    head: Row(
                                                      children: [
                                                        const Text(
                                                          'Título modal',
                                                        ),
                                                        const Spacer(),
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          child: const Icon(
                                                            Icons.close,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    body: const Text(
                                                      'Woo-hoo, você está lendo este texto em um modal!',
                                                    ),
                                                    footer: Row(
                                                      children: [
                                                        const Spacer(),
                                                        BTButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          backgroundColor:
                                                              BTColors
                                                                  .secondary,
                                                          child: const Text(
                                                            'Fechar',
                                                          ),
                                                        ),
                                                        BTButton(
                                                          onPressed: () {
                                                            log('');
                                                          },
                                                          child: const Text(
                                                            'Salvar alterações',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                'Iniciar modo de demostração',
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (builder) {
        return BTModal(
          head: Row(
            children: [
              const Text('Título modal'),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                    const Icon(Icons.close),
              ),
            ],
          ),
          body: const Text(
            'Woo-hoo, você está lendo este texto em um modal!',
          ),
          footer: Row(children: [
            const Spacer(),
            BTButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor:
                  BTColors.secondary,
              child: const Text('Fechar'),
            ),
            BTButton(
              onPressed: () {
                log('');
              },
              child: const Text(
                'Salvar alterações',
              ),
            ),
          ]),
        );
      },
    );
  },
  child: const Text(
    'Iniciar modo de demostração',
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        bodyBackground: BTColors.gray100,
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(16),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Pano de fundo estático',
                                        style:
                                            GetBootstrap.typography.headline3,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          'Quando o pano de fundo é definido como estático, o modal não fecha ao clicar fora dele. Clique no botão abaixo para experimentá-lo.',
                                        ),
                                      ),
                                      BTCard(
                                        body: Row(
                                          children: [
                                            BTButton(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (final builder) =>
                                                      BTModal(
                                                    head: Row(
                                                      children: [
                                                        const Text(
                                                          'Título modal',
                                                        ),
                                                        const Spacer(),
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          child: const Icon(
                                                            Icons.close,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    body: const Text(
                                                      'Woo-hoo, você está lendo este texto em um modal!',
                                                    ),
                                                    footer: Row(
                                                      children: [
                                                        const Spacer(),
                                                        BTButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                              context,
                                                            );
                                                          },
                                                          backgroundColor:
                                                              BTColors
                                                                  .secondary,
                                                          child: const Text(
                                                            'Fechar',
                                                          ),
                                                        ),
                                                        BTButton(
                                                          onPressed: () {
                                                            log('');
                                                          },
                                                          child: const Text(
                                                            'Salvar alterações',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  barrierDismissible: false,
                                                );
                                              },
                                              child: const Text(
                                                'Iniciar modo de demostração',
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTButton(
  onPressed: () {
    showDialog(
      context: context,
      builder: (builder) {
        return BTModal(
          head: Row(
            children: [
              const Text('Título modal'),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                    const Icon(Icons.close),
              ),
            ],
          ),
          body: const Text(
            'Woo-hoo, você está lendo este texto em um modal!',
          ),
          footer: Row(children: [
            const Spacer(),
            BTButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor:
                  BTColors.secondary,
              child: const Text('Fechar'),
            ),
            BTButton(
              onPressed: () {
                log('');
              },
              child: const Text(
                'Salvar alterações',
              ),
            ),
          ]),
        );
      },
    );
  },
  child: const Text(
    'Iniciar modo de demostração',
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        bodyBackground: BTColors.gray100,
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(16),
                                        footerPadding: EdgeInsets.zero,
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
              drawer: (!showSidebar) ? const Sidebar() : null,
            ),
          );
        },
      );
}
