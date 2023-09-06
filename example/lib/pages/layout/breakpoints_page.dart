import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/footer_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class BreakpointsPage extends StatelessWidget {
  const BreakpointsPage({super.key});

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final boxConstraints) {
          final bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

          return Title(
            title: 'Breakpoints · Bootstrap v5.2',
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
                                        'Breakpoints',
                                        style:
                                            GetBootstrap.typography.headline1,
                                      ),
                                      Text(
                                        'Breakpoints são larguras personalizáveis ​​que determinam como seu layout responsivo se comporta em todos os tamanhos de dispositivo ou janela de visualização no Bootstrap.',
                                        style: GetBootstrap.typography.lead,
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Conceitos principais',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                        '• Mobile first, design responsivo é o objetivo.',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        ' O plugin visa aplicar o mínimo de estilos para fazer um layout funcionar no menor ponto de interrupção e, em seguida, sobrepor estilos para ajustar esse design para dispositivos maiores. Isso otimiza seu código, melhora o tempo de renderização e oferece uma ótima experiência para seus visitantes.',
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      Text(
                                        'Breakpoints disponíveis',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'O Bootstrap inclui seis pontos de interrupção padrão, às vezes chamados de camadas de grade, para construção responsiva.',
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: DataTable(
                                              columns: const [
                                                DataColumn(
                                                  label: Text('Breakpoint'),
                                                ),
                                                DataColumn(
                                                  label: Text('Class infix'),
                                                ),
                                                DataColumn(
                                                  label: Text('Dimensões'),
                                                ),
                                              ],
                                              dataRowMinHeight: 32,
                                              dataRowMaxHeight: 32,
                                              dataTextStyle:
                                                  GetBootstrap.typography.small,
                                              headingRowHeight: 32,
                                              headingTextStyle: GetBootstrap
                                                  .typography.small
                                                  ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              rows: [
                                                const DataRow(
                                                  cells: [
                                                    DataCell(
                                                      Text('Extra small'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'None',
                                                        style: TextStyle(
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                      ),
                                                    ),
                                                    DataCell(Text('< 576px')),
                                                  ],
                                                ),
                                                DataRow(
                                                  cells: [
                                                    const DataCell(
                                                      Text('Small'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'sm',
                                                        style: GetBootstrap
                                                            .typography
                                                            .highlight
                                                            ?.copyWith(
                                                          color: BTColors.pink,
                                                        ),
                                                      ),
                                                    ),
                                                    const DataCell(
                                                      Text('≥ 576px'),
                                                    ),
                                                  ],
                                                ),
                                                DataRow(
                                                  cells: [
                                                    const DataCell(
                                                      Text('Medium'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'md',
                                                        style: GetBootstrap
                                                            .typography
                                                            .highlight
                                                            ?.copyWith(
                                                          color: BTColors.red,
                                                        ),
                                                      ),
                                                    ),
                                                    const DataCell(
                                                      Text('≥ 768px'),
                                                    ),
                                                  ],
                                                ),
                                                DataRow(
                                                  cells: [
                                                    const DataCell(
                                                      Text('Large'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'lg',
                                                        style: GetBootstrap
                                                            .typography
                                                            .highlight
                                                            ?.copyWith(
                                                          color: BTColors.red,
                                                        ),
                                                      ),
                                                    ),
                                                    const DataCell(
                                                      Text('≥ 992px'),
                                                    ),
                                                  ],
                                                ),
                                                DataRow(
                                                  cells: [
                                                    const DataCell(
                                                      Text('Extra large'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'xl',
                                                        style: GetBootstrap
                                                            .typography
                                                            .highlight
                                                            ?.copyWith(
                                                          color: BTColors.red,
                                                        ),
                                                      ),
                                                    ),
                                                    const DataCell(
                                                      Text('≥ 1200px'),
                                                    ),
                                                  ],
                                                ),
                                                DataRow(
                                                  cells: [
                                                    const DataCell(
                                                      Text('Extra extra large'),
                                                    ),
                                                    DataCell(
                                                      Text(
                                                        'xxl',
                                                        style: GetBootstrap
                                                            .typography
                                                            .highlight
                                                            ?.copyWith(
                                                          color: BTColors.red,
                                                        ),
                                                      ),
                                                    ),
                                                    const DataCell(
                                                      Text('≥ 1400px'),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Cada ponto de interrupção foi escolhido para conter confortavelmente contêineres cujas larguras são múltiplos de 12. Os pontos de interrupção também são representativos de um subconjunto de tamanhos de dispositivos comuns e dimensões de janelas de visualização — eles não visam especificamente todos os casos de uso ou dispositivos. Em vez disso, os intervalos fornecem uma base sólida e consistente para praticamente qualquer dispositivo.',
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        'Consultas de mídia',
                                        style:
                                            GetBootstrap.typography.headline2,
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8),
                                        child: Text(
                                          'Como o Bootstrap foi desenvolvido para ser móvel primeiro, usamos um punhado de consultas de mídia para criar pontos de interrupção sensatos para nossos layouts e interfaces. Esses pontos de interrupção são baseados principalmente nas larguras mínimas da viewport e nos permitem aumentar a escala dos elementos à medida que a viewport muda.',
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
              drawer: (!showSidebar) ? const Sidebar() : null,
            ),
          );
        },
      );
}
