import 'dart:developer';

import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        title: 'Buttons · Bootstrap v5.2',
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
                                'Botões',
                                style: GetBootstrap.typography.headline1,
                              ),
                              Text(
                                'Use os estilos de botão personalizados do Bootstrap para ações em formulários, caixas de diálogo e muito mais com suporte para vários tamanhos, estados e muito mais.',
                                style: GetBootstrap.typography.lead,
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Exemplos',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'O Bootstrap inclui vários estilos de botão predefinidos, cada um servindo a seu próprio propósito semântico, com alguns extras adicionados para maior controle.',
                              ),
                              const SizedBox(height: 32),
                              BTCard(
                                body: Row(children: [
                                  BTButton(
                                    onPressed: () => log('primary'),
                                    backgroundColor: BTColors.primary,
                                    child: const Text('Primary'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('secondary'),
                                    backgroundColor: BTColors.secondary,
                                    child: const Text('Secondary'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('success'),
                                    backgroundColor: BTColors.success,
                                    child: const Text('Success'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('danger'),
                                    backgroundColor: BTColors.danger,
                                    child: const Text('Danger'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('warning'),
                                    backgroundColor: BTColors.warning,
                                    child: const Text('Warning'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('info'),
                                    backgroundColor: BTColors.info,
                                    child: const Text('Info'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('light'),
                                    backgroundColor: BTColors.light,
                                    child: const Text('Light'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    onPressed: () => log('dark'),
                                    backgroundColor: BTColors.dark,
                                    child: const Text('Dark'),
                                  ),
                                  const SizedBox(width: 8),
                                  TextButton(
                                    onPressed: () => log('link'),
                                    child: const Text('Link'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButton(
    onPressed: () => log("dark"),
    text: 'Dark',
    backgroundColor: BTColors.primary,
  ),

TextButton( 
  onPressed: () => log('link'),
  child: const Text('Link'),
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                decoration: const BoxDecoration(
                                  color: BTColors.cyan100,
                                  border: Border(
                                    left: BorderSide(
                                      color: BTColors.cyan300,
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Transmitindo significado às tecnologias assistivas',
                                        style:
                                            GetBootstrap.typography.headline5,
                                      ),
                                      const Text(
                                        'Usar cores para adicionar significado fornece apenas uma indicação visual, que não será transmitida aos usuários de tecnologias assistivas – como leitores de tela. Certifique-se de que as informações indicadas pela cor sejam óbvias do próprio conteúdo (por exemplo, o texto visível) ou sejam incluídas por meios alternativos, como texto adicional oculto com a .visually-hiddenclasse.',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Desabilitar quebra de texto',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Se você não quiser que o texto do botão seja quebrado, você pode adicionar a .text-nowrapclasse ao botão. No Sass, você pode definir \$btn-white-space: nowrappara desabilitar a quebra de texto para cada botão.',
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Botões de contorno',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Precisa de um botão, mas não das cores de fundo pesadas que eles trazem? Substitua as classes modificadoras padrão pelas .btn-outline-*que removem todas as imagens e cores de fundo em qualquer botão.',
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Ao usar classes de botão em <a>elementos que são usados ​​para acionar a funcionalidade na página (como recolher conteúdo), em vez de vincular a novas páginas ou seções na página atual, esses links devem receber um role="button"para transmitir adequadamente sua finalidade para tecnologias assistivas, como leitores de tela.',
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Row(children: [
                                  BTButtonOutline(
                                    onPressed: () => log('primary'),
                                    backgroundColor: BTColors.primary,
                                    child: const Text('Primary'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('secondary'),
                                    backgroundColor: BTColors.secondary,
                                    child: const Text('Secondary'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('success'),
                                    backgroundColor: BTColors.success,
                                    child: const Text('Success'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('danger'),
                                    backgroundColor: BTColors.danger,
                                    child: const Text('Danger'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('warning'),
                                    backgroundColor: BTColors.warning,
                                    child: const Text('Warning'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('info'),
                                    backgroundColor: BTColors.info,
                                    child: const Text('Info'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('light'),
                                    backgroundColor: BTColors.light,
                                    child: const Text('Light'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButtonOutline(
                                    onPressed: () => log('dark'),
                                    backgroundColor: BTColors.dark,
                                    child: const Text('Dark'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButtonOutline(
    onPressed: () => log("primary"),
    text: 'Primary',
    backgroundColor: BTColors.primary,
  ),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                decoration: const BoxDecoration(
                                  color: BTColors.cyan100,
                                  border: Border(
                                    left: BorderSide(
                                      color: BTColors.cyan300,
                                      width: 3.0,
                                    ),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Text(
                                    'Alguns dos estilos de botão usam uma cor de primeiro plano relativamente clara e só devem ser usados ​​em um fundo escuro para ter contraste suficiente.',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Tamanhos',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Gosta de botões maiores ou menores? Adicione lg: true ou sm: true para tamanhos adicionais.',
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Row(children: [
                                  BTButton(
                                    size: Size.lg,
                                    onPressed: () => log('primary'),
                                    backgroundColor: BTColors.primary,
                                    child: const Text('Botão grande'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    size: Size.lg,
                                    onPressed: () => log('secondary'),
                                    backgroundColor: BTColors.secondary,
                                    child: const Text('Botão grande'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButton(
    lg: true,
    onPressed: () => log('primary'),
    text: 'Primary',
    backgroundColor: BTColors.primary,
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Row(children: [
                                  BTButton(
                                    size: Size.sm,
                                    onPressed: () => log('primary'),
                                    backgroundColor: BTColors.primary,
                                    child: const Text('Botão pequeno'),
                                  ),
                                  const SizedBox(width: 8),
                                  BTButton(
                                    size: Size.sm,
                                    onPressed: () => log('secondary'),
                                    backgroundColor: BTColors.secondary,
                                    child: const Text('Botão pequeno'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButton(
    am: true,
    onPressed: () => log('primary'),
    text: 'Primary',
    backgroundColor: BTColors.primary,
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Estado desativado',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Faça os botões parecerem inativos adicionando o disabledatributo booleano a qualquer <button>elemento. Botões desabilitados foram pointer-events: noneaplicados, impedindo que os estados de foco e ativos sejam acionados.',
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Row(children: const [
                                  BTButton(
                                    backgroundColor: BTColors.primary,
                                    child: Text('Botão principal'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButton(
                                    backgroundColor: BTColors.secondary,
                                    child: Text('Botão'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButtonOutline(
                                    backgroundColor: BTColors.primary,
                                    child: Text('Botão principal'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButtonOutline(
                                    backgroundColor: BTColors.secondary,
                                    child: Text('Botão'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButton(
    lg: true,
    onPressed: () => log('primary'),
    text: 'Primary',
    backgroundColor: BTColors.primary,
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Estado desativado',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Faça os botões parecerem inativos adicionando o disabledatributo booleano a qualquer <button>elemento. Botões desabilitados foram pointer-events: noneaplicados, impedindo que os estados de foco e ativos sejam acionados.',
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Row(children: const [
                                  BTButton(
                                    backgroundColor: BTColors.primary,
                                    child: Text('Botão principal'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButton(
                                    backgroundColor: BTColors.secondary,
                                    child: Text('Botão'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButtonOutline(
                                    backgroundColor: BTColors.primary,
                                    child: Text('Botão principal'),
                                  ),
                                  SizedBox(width: 8),
                                  BTButtonOutline(
                                    backgroundColor: BTColors.secondary,
                                    child: Text('Botão'),
                                  ),
                                ]),
                                footer: HighlightView(
                                  '''
BTButton(
    lg: true,
    text: 'Primary',
    backgroundColor: BTColors.primary,
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
                                footerPadding: const EdgeInsets.all(0),
                              ),
                              const SizedBox(height: 32),
                              Text(
                                'Botões de bloco',
                                style: GetBootstrap.typography.headline2,
                              ),
                              const Text(
                                'Crie pilhas responsivas de “botões de bloco” de largura total como os do Bootstrap 4 com uma mistura de nossos utilitários de exibição e de intervalo. Ao usar utilitários em vez de classes específicas de botões, temos um controle muito maior sobre espaçamento, alinhamento e comportamentos responsivos.',
                              ),
                              const SizedBox(height: 16),
                              BTCard(
                                body: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    BTButton(
                                      onPressed: () => log('primary'),
                                      backgroundColor: BTColors.primary,
                                      child: const Text('Botão'),
                                    ),
                                    const SizedBox(height: 8),
                                    BTButton(
                                      onPressed: () => log('primary'),
                                      backgroundColor: BTColors.primary,
                                      child: const Text('Botão'),
                                    ),
                                  ],
                                ),
                                footer: HighlightView(
                                  '''
Expanded(
  child: BTButton(
            lg: true,
            onPressed: () => log('primary'),
            text: 'Primary',
            backgroundColor: BTColors.primary,
        ),
),

//OU

Column(
  crossAxisAlignment:
      CrossAxisAlignment.stretch,
  children: [
    BTButton(
      onPressed: () => log('primary'),
      text: 'Botão',
      backgroundColor: BTColors.primary,
    ),
    const SizedBox(
      height: 8,
    ),
    BTButton(
      onPressed: () => log('primary'),
      text: 'Botão',
      backgroundColor: BTColors.primary,
    ),
  ],
),
                                        ''',
                                  language: 'dart',
                                  theme: foundationTheme,
                                  padding: const EdgeInsets.all(16),
                                  textStyle: GetBootstrap.typography.highlight,
                                ),
                                footerBackground: BTColors.gray100,
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
