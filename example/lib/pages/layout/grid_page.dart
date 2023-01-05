import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';
import 'package:get_bootstrap/grid/bt_row.dart';

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
                                      xs: 4,
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
                                      xs: 4,
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
                                      xs: 4,
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
                              const SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                  style: GetBootstrap.typography.bodyText2,
                                  children: [
                                    const TextSpan(
                                      text:
                                          '• Os contêineres centralizam e preenchem horizontalmente seu conteúdo.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: ' Use ',
                                    ),
                                    TextSpan(
                                      text: 'BTContainer()',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' para uma largura de pixel responsiva, ',
                                    ),
                                    TextSpan(
                                      text: 'BTContainer(fluid: true)',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          'para width: 100% em todas as viewports e dispositivos, ou um contêiner responsivo (por exemplo, ',
                                    ),
                                    const TextSpan(
                                      text: ' aplica-se a ',
                                    ),
                                    TextSpan(
                                      text: 'BTContainer(md: true)',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ') para uma combinação de larguras fluidas e de pixel.',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                  style: GetBootstrap.typography.bodyText2,
                                  children: const [
                                    TextSpan(
                                      text:
                                          '• Linhas são wrappers para colunas.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          ' Cada coluna tem horizontal padding (chamado de calha) para controlar o espaço entre eles. Este padding é então neutralizado nas linhas com margens negativas para garantir que o conteúdo em suas colunas esteja visualmente alinhado no lado esquerdo. As linhas também oferecem suporte a classes modificadoras para aplicar uniformemente o dimensionamento de colunas e classes de medianiz para alterar o espaçamento de seu conteúdo.',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                  style: GetBootstrap.typography.bodyText2,
                                  children: [
                                    const TextSpan(
                                      text:
                                          '• As colunas são incrivelmente flexíveis.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' Existem 12 colunas de modelo disponíveis por linha, permitindo que você crie diferentes combinações de elementos que abrangem qualquer número de colunas. As classes de coluna indicam o número de colunas de modelo a serem expandidas (por exemplo, ',
                                    ),
                                    TextSpan(
                                      text: 'col-4',
                                      style: GetBootstrap.typography.highlight
                                          ?.copyWith(
                                        color: BTColors.pink,
                                      ),
                                    ),
                                    const TextSpan(
                                      text:
                                          ' abrange quatro). widths são definidos em porcentagens para que você sempre tenha o mesmo tamanho relativo.',
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Opções de Grid',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'O sistema de grade do Bootstrap pode se adaptar a todos os seis pontos de interrupção padrão e a quaisquer pontos de interrupção personalizados. As seis camadas de grade padrão são as seguintes:',
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '• Extra pequeno (xs)',
                              ),
                              const Text(
                                '• Pequeno (sm)',
                              ),
                              const Text(
                                '• Médio (md)',
                              ),
                              const Text(
                                '• Grande (lg)',
                              ),
                              const Text(
                                '• Extra grande (xl)',
                              ),
                              const Text(
                                '• Extra extra grande (xxl)',
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Conforme observado acima, cada um desses pontos de interrupção possui seu próprio contêiner, prefixo de classe exclusivo e modificadores. Veja como a grade muda nesses pontos de interrupção:',
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: DataTable(
                                      columns: [
                                        const DataColumn(
                                          label: Text(''),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'xs\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '<576px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'sm\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '≥576px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'md\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '≥768px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'lg\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '≥992px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'xl\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '≥1200px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        DataColumn(
                                          label: RichText(
                                            text: TextSpan(
                                              style: GetBootstrap
                                                  .typography.bodyText2,
                                              children: [
                                                const TextSpan(
                                                  text: 'xxl\n',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '≥1400px',
                                                  style: GetBootstrap
                                                      .typography.small,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                      dataRowHeight: 48,
                                      dataTextStyle:
                                          GetBootstrap.typography.small,
                                      headingRowHeight: 48,
                                      headingTextStyle: GetBootstrap
                                          .typography.small
                                          ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      rows: [
                                        const DataRow(cells: [
                                          DataCell(
                                            Text(
                                              'Recipiente (max-width)',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text('Nenhum (automático)')),
                                          DataCell(Text('540px')),
                                          DataCell(Text('720px')),
                                          DataCell(Text('960px')),
                                          DataCell(Text('1140px')),
                                          DataCell(Text('1320 px')),
                                        ]),
                                        DataRow(cells: [
                                          const DataCell(
                                            Text(
                                              'Prefixo de classe',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(
                                            'col-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                          DataCell(Text(
                                            'col-sm-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                          DataCell(Text(
                                            'col-md-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                          DataCell(Text(
                                            'col-lg-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                          DataCell(Text(
                                            'col-xl-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                          DataCell(Text(
                                            'col-xxl-',
                                            style: GetBootstrap
                                                .typography.highlight
                                                ?.copyWith(
                                              color: BTColors.pink,
                                            ),
                                          )),
                                        ]),
                                        const DataRow(cells: [
                                          DataCell(Text(
                                            '# de colunas',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                          DataCell(Text(
                                            '12',
                                          )),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                        ]),
                                        const DataRow(cells: [
                                          DataCell(
                                            Text(
                                              'largura da calha',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(
                                            '1,5 rem (0,75 rem à esquerda e à direita)',
                                          )),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                        ]),
                                        const DataRow(cells: [
                                          DataCell(
                                            Text(
                                              'Calhas personalizadas',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(
                                            'Sim',
                                          )),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                        ]),
                                        const DataRow(cells: [
                                          DataCell(
                                            Text(
                                              'Encaixável',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(
                                            'Sim',
                                          )),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                        ]),
                                        const DataRow(cells: [
                                          DataCell(
                                            Text(
                                              'Ordenação das colunas',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(
                                            'Sim',
                                          )),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                          DataCell(Text('')),
                                        ]),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Definindo a largura de uma coluna',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'O layout automático para colunas de grade flexbox também significa que você pode definir a largura de uma coluna e fazer com que as colunas irmãs sejam redimensionadas automaticamente em torno dela. Você pode usar classes de grade predefinidas (como mostrado abaixo), mixins de grade ou larguras inline. Observe que as outras colunas serão redimensionadas, independentemente da largura da coluna central.',
                              ),
                              const SizedBox(height: 8),
                              BTCard(
                                body: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: BTRow(children: [
                                    BTCol(
                                      xs:3,
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
                                          child: Text('1 de 3'),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xs:6,
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
                                          child: Text('2 de 3 (mais largo)'),
                                        ),
                                      ),
                                    ),
                                    BTCol(
                                      xs:3,
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
                                          child: Text('3 de 3'),
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
            sizes: const ['col-3'],
            child: const Center(
                  child: Text('1 de 3'),
            ),
        ),
        BTCol(
            sizes: const ['col-6'],
            child: const Center(
                  child: Text('2 de 3 (mais largo)'),
            ),
        ),
        BTCol(
            sizes: const ['col-3'],
            child: const Center(
                  child: Text('3 de 3'),
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
