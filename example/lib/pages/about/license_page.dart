import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class LicensePage extends StatelessWidget {
  const LicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'License FAQs · Bootstrap v5.2',
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
                                    'Perguntas frequentes sobre licenças',
                                    style: GetBootstrap.typography.headline1,
                                  ),
                                  Text(
                                    'Perguntas mais frequentes sobre a licença de código aberto do Bootstrap.',
                                    style: GetBootstrap.typography.lead,
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  const Text(
                                    'Bootstrap é lançado sob a licença do MIT e é copyright 2022 Twitter. Resumido em pedaços menores, pode ser descrito com as seguintes condições.',
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Ele exige que você:',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• Mantenha a licença e o aviso de direitos autorais incluídos nos arquivos CSS e JavaScript do Bootstrap ao usá-los em seus trabalhos',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Ele permite que você:',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• Baixe e use o Bootstrap gratuitamente, no todo ou em parte, para fins pessoais, privados, internos da empresa ou comerciais',
                                        ),
                                        Text(
                                          '• Use Bootstrap em pacotes ou distribuições que você cria',
                                        ),
                                        Text(
                                          '• Modificar o código-fonte',
                                        ),
                                        Text(
                                          '• Conceda uma sublicença para modificar e distribuir o Bootstrap a terceiros não incluídos na licença',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Ele proíbe você de:',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• Responsabilize os autores e proprietários de licenças por danos, pois o Bootstrap é fornecido sem garantia',
                                        ),
                                        Text(
                                          '• Responsabilize os criadores ou detentores de direitos autorais do Bootstrap',
                                        ),
                                        Text(
                                          '• Redistribua qualquer parte do Bootstrap sem a devida atribuição',
                                        ),
                                        Text(
                                          '• Use quaisquer marcas de propriedade do Twitter de qualquer forma que possa indicar ou sugerir que o Twitter endossa sua distribuição',
                                        ),
                                        Text(
                                          '• Use qualquer marca de propriedade do Twitter de qualquer forma que possa indicar ou sugerir que você criou o software do Twitter em questão',
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Não exige que você:',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          '• Inclua a fonte do próprio Bootstrap, ou de quaisquer modificações que você possa ter feito nele, em qualquer redistribuição que você possa montar que o inclua',
                                        ),
                                        Text(
                                          '• Envie as alterações feitas no Bootstrap de volta ao projeto Bootstrap (embora esse feedback seja incentivado)',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'A licença completa do Bootstrap está localizada ',
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                          ),
                                          TextSpan(
                                            text: 'no repositório do projeto',
                                            style: GetBootstrap.typography.link,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(Uri.parse(
                                                  'https://github.com/vitoramaral10/get_bootstrap',
                                                ));
                                              },
                                          ),
                                          TextSpan(
                                            text:
                                                ' para obter mais informações.',
                                            style: GetBootstrap
                                                .typography.bodyText2,
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
