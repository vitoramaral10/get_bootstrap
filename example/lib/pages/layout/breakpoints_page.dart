import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class BreakpointsPage extends StatelessWidget {
  const BreakpointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'Breakpoints · Bootstrap v5.2',
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
                                    'Breakpoints',
                                    style: GetBootstrap.typography.headline1,
                                  ),
                                  Text(
                                    'Breakpoints são larguras personalizáveis ​​que determinam como seu layout responsivo se comporta em todos os tamanhos de dispositivo ou janela de visualização no Bootstrap.',
                                    style: GetBootstrap.typography.lead,
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Conceitos principais',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                            children: const [
                                              TextSpan(
                                                text:
                                                    '• Breakpoints são os blocos de construção do design responsivo.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' Use-os para controlar quando seu layout pode ser adaptado em uma determinada viewport ou tamanho de dispositivo.',
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                            children: const [
                                              TextSpan(
                                                text:
                                                    '• Use consultas de mídia para arquitetar seu CSS por breakpoint.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' As consultas de mídia são um recurso do CSS que permite aplicar estilos condicionalmente com base em um conjunto de parâmetros do navegador e do sistema operacional. Usamos mais comumente min-widthem nossas consultas de mídia.',
                                              ),
                                            ],
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: GetBootstrap
                                                .typography.bodyText2,
                                            children: const [
                                              TextSpan(
                                                text:
                                                    '• Mobile first, design responsivo é o objetivo.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    ' O CSS do Bootstrap visa aplicar o mínimo de estilos para fazer um layout funcionar no menor ponto de interrupção e, em seguida, sobrepor estilos para ajustar esse design para dispositivos maiores. Isso otimiza seu CSS, melhora o tempo de renderização e oferece uma ótima experiência para seus visitantes.',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Breakpoints disponíveis',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'O Bootstrap inclui seis pontos de interrupção padrão, às vezes chamados de camadas de grade , para construção responsiva. Esses pontos de interrupção podem ser personalizados se você estiver usando nossos arquivos Sass de origem.',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                    ),
                                    child: BTTable(
                                      head: const [
                                        'Breakpoint',
                                        'Class infix',
                                        'Dimensões',
                                      ],
                                      body: [
                                        const [
                                          Text('Extra small'),
                                          Text(
                                            'None',
                                            style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Text('<576px'),
                                        ],
                                        [
                                          const Text('Small'),
                                          Text(
                                            'sm',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.red,
                                            ),
                                          ),
                                          const Text('≥576px'),
                                        ],
                                        [
                                          const Text('Medium'),
                                          Text(
                                            'md',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.red,
                                            ),
                                          ),
                                          const Text('≥768px'),
                                        ],
                                        [
                                          const Text('Large'),
                                          Text(
                                            'lg',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.red,
                                            ),
                                          ),
                                          const Text('≥992px'),
                                        ],
                                        [
                                          const Text('Extra large'),
                                          Text(
                                            'xl',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.red,
                                            ),
                                          ),
                                          const Text('≥1200px'),
                                        ],
                                        [
                                          const Text('Extra extra large'),
                                          Text(
                                            'xxl',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.red,
                                            ),
                                          ),
                                          const Text('≥1400px'),
                                        ],
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Cada ponto de interrupção foi escolhido para conter confortavelmente contêineres cujas larguras são múltiplos de 12. Os pontos de interrupção também são representativos de um subconjunto de tamanhos de dispositivos comuns e dimensões de janelas de visualização — eles não visam especificamente todos os casos de uso ou dispositivos. Em vez disso, os intervalos fornecem uma base sólida e consistente para praticamente qualquer dispositivo.',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Consultas de mídia',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Como o Bootstrap foi desenvolvido para ser móvel primeiro, usamos um punhado de consultas de mídia para criar pontos de interrupção sensatos para nossos layouts e interfaces. Esses pontos de interrupção são baseados principalmente nas larguras mínimas da janela de visualização e nos permitem aumentar a escala dos elementos à medida que a janela de visualização muda.',
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
