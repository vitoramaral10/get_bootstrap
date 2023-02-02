import 'dart:developer';

import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class AlertsPage extends StatefulWidget {
  const AlertsPage({super.key});

  @override
  State<AlertsPage> createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  bool _showAlert = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        title: 'Alerts · Bootstrap v5.2',
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
                                'Alertas',
                                style: GetBootstrap.typography.headline1,
                              ),
                              Text(
                                'Forneça mensagens de feedback contextuais para ações típicas do usuário com um punhado de mensagens de alerta disponíveis e flexíveis.',
                                style: GetBootstrap.typography.lead,
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Exemplos',
                                style: GetBootstrap.typography.headline2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text:
                                          'Os alertas estão disponíveis para qualquer comprimento de texto, bem como um botão Fechar opcional. Para um estilo adequado, use uma das oito classes contextuais ',
                                      style: GetBootstrap.typography.bodyText2,
                                    ),
                                    TextSpan(
                                      text: 'necessárias.',
                                      style: GetBootstrap.typography.bodyText2
                                          ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 32),
                              BTCard(
                                body: Column(
                                  children: const [
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
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                bodyPadding: const EdgeInsets.all(24),
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Exemplo ao vivo',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Clique no botão abaixo para mostrar um alerta (oculto com estilos embutidos para iniciar) e, em seguida, ignorá-lo (e destruí-lo) com o botão interno de fechar.',
                                ),
                              ),
                              const SizedBox(height: 32),
                              BTCard(
                                body: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                bodyPadding: const EdgeInsets.all(24),
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Cor do link',
                                style: GetBootstrap.typography.headline2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text:
                                          'Os alertas estão disponíveis para qualquer comprimento de texto, bem como um botão Fechar opcional. Para um estilo adequado, use uma das oito classes contextuais ',
                                      style: GetBootstrap.typography.bodyText2,
                                    ),
                                    TextSpan(
                                      text: 'necessárias.',
                                      style: GetBootstrap.typography.bodyText2
                                          ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                              const SizedBox(height: 32),
                              BTCard(
                                body: Column(
                                  children: [
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                    const SizedBox(height: 16),
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
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                bodyPadding: const EdgeInsets.all(24),
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Conteúdo adicional',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Os alertas também podem conter elementos HTML adicionais, como cabeçalhos, parágrafos e divisores.',
                                ),
                              ),
                              const SizedBox(height: 32),
                              BTCard(
                                body: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                  textStyle: GetBootstrap.typography.highlight,
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
