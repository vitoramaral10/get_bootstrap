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
        color: BTColors.purple,
        title: 'Buttons · Bootstrap v5.2',
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
                                    'Botões',
                                    style: GetBootstrap.typography.headline1,
                                  ),
                                  Text(
                                    'Use os estilos de botão personalizados do Bootstrap para ações em formulários, caixas de diálogo e muito mais com suporte para vários tamanhos, estados e muito mais.',
                                    style: GetBootstrap.typography.lead,
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Exemplos',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'O Bootstrap inclui vários estilos de botão predefinidos, cada um servindo a seu próprio propósito semântico, com alguns extras adicionados para maior controle.',
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: [
                                        BTButton(
                                          onPressed: () => log('primary'),
                                          text: 'Primary',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('secondary'),
                                          text: 'Secondary',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('success'),
                                          text: 'Success',
                                          backgroundColor: BTColors.success,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('danger'),
                                          text: 'Danger',
                                          backgroundColor: BTColors.danger,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('warning'),
                                          text: 'Warning',
                                          backgroundColor: BTColors.warning,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('info'),
                                          text: 'Info',
                                          backgroundColor: BTColors.info,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('light'),
                                          text: 'Light',
                                          backgroundColor: BTColors.light,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          onPressed: () => log('dark'),
                                          text: 'Dark',
                                          backgroundColor: BTColors.dark,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          onPressed: () => log('link'),
                                          child: const Text('Link'),
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(
                                          color: BTColors.cyan300,
                                          width: 3.0,
                                        ),
                                      ),
                                      color: BTColors.cyan100,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Transmitindo significado às tecnologias assistivas',
                                            style: GetBootstrap
                                                .typography.headline5,
                                          ),
                                          const Text(
                                            'Usar cores para adicionar significado fornece apenas uma indicação visual, que não será transmitida aos usuários de tecnologias assistivas – como leitores de tela. Certifique-se de que as informações indicadas pela cor sejam óbvias do próprio conteúdo (por exemplo, o texto visível) ou sejam incluídas por meios alternativos, como texto adicional oculto com a .visually-hiddenclasse.',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Desabilitar quebra de texto',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Se você não quiser que o texto do botão seja quebrado, você pode adicionar a .text-nowrapclasse ao botão. No Sass, você pode definir \$btn-white-space: nowrappara desabilitar a quebra de texto para cada botão.',
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Botões de contorno',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Precisa de um botão, mas não das cores de fundo pesadas que eles trazem? Substitua as classes modificadoras padrão pelas .btn-outline-*que removem todas as imagens e cores de fundo em qualquer botão.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Text(
                                    'Ao usar classes de botão em <a>elementos que são usados ​​para acionar a funcionalidade na página (como recolher conteúdo), em vez de vincular a novas páginas ou seções na página atual, esses links devem receber um role="button"para transmitir adequadamente sua finalidade para tecnologias assistivas, como leitores de tela.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: [
                                        BTButtonOutline(
                                          onPressed: () => log('primary'),
                                          text: 'Primary',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('secondary'),
                                          text: 'Secondary',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('success'),
                                          text: 'Success',
                                          backgroundColor: BTColors.success,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('danger'),
                                          text: 'Danger',
                                          backgroundColor: BTColors.danger,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('warning'),
                                          text: 'Warning',
                                          backgroundColor: BTColors.warning,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('info'),
                                          text: 'Info',
                                          backgroundColor: BTColors.info,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('light'),
                                          text: 'Light',
                                          backgroundColor: BTColors.light,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          onPressed: () => log('dark'),
                                          text: 'Dark',
                                          backgroundColor: BTColors.dark,
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        left: BorderSide(
                                          color: BTColors.cyan300,
                                          width: 3.0,
                                        ),
                                      ),
                                      color: BTColors.cyan100,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(24.0),
                                      child: Text(
                                        'Alguns dos estilos de botão usam uma cor de primeiro plano relativamente clara e só devem ser usados ​​em um fundo escuro para ter contraste suficiente.',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Tamanhos',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Gosta de botões maiores ou menores? Adicione lg: true ou sm: true para tamanhos adicionais.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: [
                                        BTButton(
                                          lg: true,
                                          onPressed: () => log('primary'),
                                          text: 'Botão grande',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          lg: true,
                                          onPressed: () => log('secondary'),
                                          text: 'Botão grande',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: [
                                        BTButton(
                                          sm: true,
                                          onPressed: () => log('primary'),
                                          text: 'Botão pequeno',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          sm: true,
                                          onPressed: () => log('secondary'),
                                          text: 'Botão pequeno',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Estado desativado',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Faça os botões parecerem inativos adicionando o disabledatributo booleano a qualquer <button>elemento. Botões desabilitados foram pointer-events: noneaplicados, impedindo que os estados de foco e ativos sejam acionados.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: const [
                                        BTButton(
                                          text: 'Botão principal',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          text: 'Botão',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          text: 'Botão principal',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          text: 'Botão',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Estado desativado',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Faça os botões parecerem inativos adicionando o disabledatributo booleano a qualquer <button>elemento. Botões desabilitados foram pointer-events: noneaplicados, impedindo que os estados de foco e ativos sejam acionados.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Row(
                                      children: const [
                                        BTButton(
                                          text: 'Botão principal',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButton(
                                          text: 'Botão',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          text: 'Botão principal',
                                          backgroundColor: BTColors.primary,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        BTButtonOutline(
                                          text: 'Botão',
                                          backgroundColor: BTColors.secondary,
                                        ),
                                      ],
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
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
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Botões de bloco',
                                    style: GetBootstrap.typography.headline2,
                                  ),
                                  const Text(
                                    'Crie pilhas responsivas de “botões de bloco” de largura total como os do Bootstrap 4 com uma mistura de nossos utilitários de exibição e de intervalo. Ao usar utilitários em vez de classes específicas de botões, temos um controle muito maior sobre espaçamento, alinhamento e comportamentos responsivos.',
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    body: Column(
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
                                    footerPadding: const EdgeInsets.all(0),
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
