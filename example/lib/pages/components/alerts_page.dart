import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class AlertsPage extends StatefulWidget {
  const AlertsPage({super.key});

  @override
  State<AlertsPage> createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  bool _showAlert = false;
  bool _showAlert2 = true;

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final boxConstraints) {
          final bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

          return Title(
            title: 'Alerts · Bootstrap v5.2',
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
                                        'Alertas',
                                        style:
                                            GetBootstrap.typography.headline1,
                                      ),
                                      Text(
                                        'Forneça mensagens de feedback contextuais para ações típicas do usuário com um punhado de mensagens de alerta disponíveis e flexíveis.',
                                        style: GetBootstrap.typography.lead,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Exemplos',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Os alertas estão disponíveis para qualquer comprimento de texto, bem como um botão Fechar opcional. Para um estilo adequado, use uma das oito classes contextuais ',
                                                style: GetBootstrap
                                                    .typography.bodyText2,
                                              ),
                                              TextSpan(
                                                text: 'necessárias.',
                                                style: GetBootstrap
                                                    .typography.bodyText2
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: const Column(
                                          children: [
                                            BTAlert(
                                              child: Text(
                                                'Um alerta primário simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.secondary,
                                              child: Text(
                                                'Um alerta secundário simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.success,
                                              child: Text(
                                                'Um alerta de sucesso simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.danger,
                                              child: Text(
                                                'Um simples alerta de perigo - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.warning,
                                              child: Text(
                                                'Um alerta de aviso simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.info,
                                              child: Text(
                                                'Um alerta de informação simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.light,
                                              child: Text(
                                                'Um alerta light simples - confira!',
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.dark,
                                              child: Text(
                                                'Um alerta dark simples - confira!',
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTAlert(
  child: Text(
    'Um alerta primário simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.secondary,
  child: Text(
    'Um alerta secundário simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.success,
  child: Text(
    'Um alerta de sucesso simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.danger,
  child: Text(
    'Um simples alerta de perigo - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.warning,
  child: Text(
    'Um alerta de aviso simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.info,
  child: Text(
    'Um alerta de informação simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.light,
  child: Text(
    'Um alerta light simples - confira!',
  ),
),

BTAlert(
  alertStyle: AlertStyle.dark,
  child: Text(
    'Um alerta dark simples - confira!',
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Exemplo ao vivo',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Clique no botão abaixo para mostrar um alerta (oculto com estilos embutidos para iniciar) e, em seguida, ignorá-lo (e destruí-lo) com o botão interno de fechar.',
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (_showAlert)
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 16,
                                                ),
                                                child: BTAlert(
                                                  alertStyle:
                                                      AlertStyle.success,
                                                  dismissPressed: () {
                                                    if (mounted) {
                                                      setState(() {
                                                        _showAlert = false;
                                                      });
                                                    }
                                                  },
                                                  child: const Text(
                                                    'Legal, você acionou esta mensagem de alerta!',
                                                  ),
                                                ),
                                              ),
                                            BTButton(
                                              onPressed: () {
                                                if (mounted) {
                                                  setState(() {
                                                    _showAlert = true;
                                                  });
                                                }
                                              },
                                              child: const Text(
                                                'Mostrar alerta ao vivo',
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
if (_showAlert)
  Padding(
    padding:
        const EdgeInsets.only(bottom: 16),
    child: BTAlert(
      alertStyle: AlertStyle.success,
      dismissPressed: () {
        if (mounted) {
          setState(() {
            _showAlert = false;
          });
        }
      },
      child: const Text(
        'Legal, você acionou esta mensagem de alerta!',
      ),
    ),
  ),
BTButton(
  onPressed: () {
    if (mounted) {
      setState(() {
        _showAlert = true;
      });
    }
  },
  child: const Text(
    'Mostrar alerta ao vivo',
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Cor do link',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 8,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Os alertas estão disponíveis para qualquer comprimento de texto, bem como um botão Fechar opcional. Para um estilo adequado, use uma das oito classes contextuais ',
                                                style: GetBootstrap
                                                    .typography.bodyText2,
                                              ),
                                              TextSpan(
                                                text: 'necessárias.',
                                                style: GetBootstrap
                                                    .typography.bodyText2
                                                    ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: Column(
                                          children: [
                                            BTAlert(
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta primário simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.secondary,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta secundário simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.success,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta de sucesso simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.danger,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta de perigo simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.warning,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta de aviso simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.info,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta de informação simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.light,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta light simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            BTAlert(
                                              alertStyle: AlertStyle.dark,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    const TextSpan(
                                                      text:
                                                          'Um alerta dark simples com um ',
                                                    ),
                                                    TextSpan(
                                                      text: 'link de exemplo',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              log('');
                                                            },
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          '. Dê um clique se quiser.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTAlert(
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta primário simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.secondary,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta secundário simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.success,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta de sucesso simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.danger,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta de perigo simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.warning,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta de aviso simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.info,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta de informação simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.light,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta light simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),

BTAlert(
  alertStyle: AlertStyle.dark,
  child: Text.rich(
    TextSpan(children: [
      const TextSpan(
        text:
            'Um alerta dark simples com um ',
      ),
      TextSpan(
        text: 'link de exemplo',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            log('');
          },
      ),
      const TextSpan(
        text: '. Dê um clique se quiser.',
      ),
    ]),
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Conteúdo adicional',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Os alertas também podem conter elementos HTML adicionais, como cabeçalhos, parágrafos e divisores.',
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BTAlert(
                                              alertStyle: AlertStyle.success,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      bottom: 8,
                                                    ),
                                                    child: Text(
                                                      'Bom trabalho!',
                                                      style: GetBootstrap
                                                          .typography.headline4,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Aww sim, você leu com sucesso esta importante mensagem de alerta. Este texto de exemplo será executado um pouco mais para que você possa ver como o espaçamento dentro de um alerta funciona com esse tipo de conteúdo.',
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical: 16,
                                                    ),
                                                    child: Divider(
                                                      height: 1,
                                                      color: BTColors.success,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Sempre que precisar, certifique-se de usar utilitários de margem para manter as coisas limpas e organizadas.',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTAlert(
  alertStyle: AlertStyle.success,
  child: Column(
    crossAxisAlignment:
        CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          bottom: 8,
        ),
        child: Text(
          'Bom trabalho!',
          style: GetBootstrap
              .typography.headline4,
        ),
      ),
      const Text(
        'Aww sim, você leu com sucesso esta importante mensagem de alerta. Este texto de exemplo será executado um pouco mais para que você possa ver como o espaçamento dentro de um alerta funciona com esse tipo de conteúdo.',
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Divider(
          height: 1,
          color: BTColors.success,
        ),
      ),
      const Text(
        'Sempre que precisar, certifique-se de usar utilitários de margem para manter as coisas limpas e organizadas.',
      ),
    ],
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Ícones',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Da mesma forma, você pode usar utilitários flexbox e ícones Bootstrap para criar alertas com ícones. Dependendo de seus ícones e conteúdo, você pode querer adicionar mais utilitários ou estilos personalizados.',
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            BTAlert(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.info_rounded,
                                                    color: BTColors.primary,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Um exemplo de alerta com um ícone',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            BTAlert(
                                              alertStyle: AlertStyle.success,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle,
                                                    color: BTColors.success,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Um exemplo de alerta de sucesso com um ícone',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            BTAlert(
                                              alertStyle: AlertStyle.warning,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.warning,
                                                    color: BTColors.warning,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Um exemplo de alerta de aviso com um ícone',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            BTAlert(
                                              alertStyle: AlertStyle.danger,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.warning,
                                                    color: BTColors.danger,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    'Um exemplo de alerta de perigo com um ícone',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
BTAlert(
  alertStyle: AlertStyle.primary,
  child: Row(
    children: const [
      Icon(
        Icons.warning,
        color: BTColors.primary,
      ),
      SizedBox(
        width: 8,
      ),
      Text(
        'Um exemplo de alerta com um ícone',
      ),
    ],
  ),
),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
                                        footerPadding: EdgeInsets.zero,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Dispensando',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Para dispensar um alerta pode configurar o parâmetro dismissPressed, ele colocará o icone automaticamente.',
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      BTCard(
                                        body: Column(
                                          children: [
                                            if (_showAlert2)
                                              BTAlert(
                                                alertStyle: AlertStyle.warning,
                                                dismissPressed: () {
                                                  if (mounted) {
                                                    setState(() {
                                                      _showAlert2 = false;
                                                    });
                                                  }
                                                },
                                                child: const Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'Santo guacamole!',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            ' Você deve verificar alguns desses campos abaixo.',
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        footer: HighlightView(
                                          '''
if (_showAlert2)
  BTAlert(
    alertStyle: AlertStyle.warning,
    dismissPressed: () {
      if (mounted) {
        setState(() {
          _showAlert2 = false;
        });
      }
    },
    child: const Text.rich(
      TextSpan(children: [
        TextSpan(
          text: 'Santo guacamole!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text:
              ' Você deve verificar alguns desses campos abaixo.',
        ),
      ]),
    ),
  ),
                                        ''',
                                          language: 'dart',
                                          theme: foundationTheme,
                                          padding: const EdgeInsets.all(16),
                                          textStyle:
                                              GetBootstrap.typography.highlight,
                                        ),
                                        footerBackground: BTColors.gray100,
                                        bodyPadding: const EdgeInsets.all(24),
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
