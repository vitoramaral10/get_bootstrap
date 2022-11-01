import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';
import 'widgets/all_colors_pallete.dart';
import 'widgets/theme_pallete.dart';

class CustomizeColorPage extends StatelessWidget {
  const CustomizeColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'Color · Bootstrap v5.2',
        child: Scaffold(
          drawer: (!showSidebar) ? const Sidebar() : null,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 56),
                child: BTContainer(
                  xxl: true,
                  child: Row(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Cor',
                                    style: GetBootstrap.typography.headline1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0,),
                                    child: Text(
                                      'O Bootstrap é suportado por um extenso sistema de cores que tem como tema nossos estilos e componentes. Isso permite uma personalização e extensão mais abrangentes para qualquer projeto.',
                                      style: GetBootstrap.typography.lead,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 32.0),
                                    child: Text(
                                      'Cores do tema',
                                      style: GetBootstrap.typography.headline2,
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Usamos um subconjunto de todas as cores para criar uma paleta de cores menor para gerar esquemas de cores.',
                                    ),
                                  ),
                                  const ThemePallete(),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Todas as cores estão disponíveis pela classe BTColor.',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Todas as cores',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Todas as cores do bootstrap estão disponíveis pro variável.',
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Certifique-se de monitorar as taxas de contraste ao personalizar as cores. Conforme mostrado abaixo, adicionamos três taxas de contraste a cada uma das cores principais – uma para as cores atuais da amostra, uma para o branco e uma para o preto.',
                                    ),
                                  ),
                                  const AllColorsPallete(),
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
