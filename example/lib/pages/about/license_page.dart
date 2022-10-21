import 'package:flutter/material.dart';
import 'package:get_bootstrap/bootstrap.dart';
import 'package:get_bootstrap/helpers/colors.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class LicensePage extends StatelessWidget {
  const LicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = Bootstrap.showSidebar(boxConstraints);

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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            bottom: 16.0,
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text(
                                'Perguntas frequentes sobre licenças',
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              Text(
                                'Perguntas mais frequentes sobre a licença de código aberto do Bootstrap.',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              const Text(
                                'Bootstrap é lançado sob a licença do MIT e é copyright 2022 Twitter. Resumido em pedaços menores, pode ser descrito com as seguintes condições.',
                              ),
                              Text(
                                'Ele exige que você:',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '• Mantenha a licença e o aviso de direitos autorais incluídos nos arquivos CSS e JavaScript do Bootstrap ao usá-los em seus trabalhos',
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Ele permite que você:',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              Text(
                                'Ele proíbe você de:',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              Text(
                                'Não exige que você:',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              const Text(
                                'A licença completa do Bootstrap está localizada no repositório do projeto para obter mais informações.',
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
