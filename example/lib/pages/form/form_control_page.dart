import 'package:bootstrap_example/pages/widgets/footer_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/foundation.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

import '../widgets/header_widget.dart';
import '../widgets/sidebar.dart';

class FormControlPage extends StatefulWidget {
  const FormControlPage({super.key});

  @override
  State<FormControlPage> createState() => _FormControlPageState();
}

class _FormControlPageState extends State<FormControlPage> {
  String fileName = '';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      bool showSidebar = GetBootstrap.showSidebar(boxConstraints);

      return Title(
        color: BTColors.purple,
        title: 'Form controls · Bootstrap v5.2',
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
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Controles de formulário',
//                                     style: GetBootstrap.typography.headline1,
//                                   ),
//                                   Text(
//                                     'Ofereça controles de formulário textual como <input>s e <textarea>s com estilos personalizados, dimensionamento, estados de foco e muito mais.',
//                                     style: GetBootstrap.typography.lead,
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Exemplo',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: Column(
//                                       children: const [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 16),
//                                           child: FormGroup(
//                                             title: 'Endereço de email',
//                                             placeholder: 'name@example.com',
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 16),
//                                           child: FormGroup(
//                                             title: 'Example textarea',
//                                             maxLines: 3,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// Padding(
//   padding: EdgeInsets.only(bottom: 16),
//   child: FormGroup(
//     title: 'Endereço de email',
//     placeholder: 'name@example.com',
//   ),
// ),
// Padding(
//   padding: EdgeInsets.only(bottom: 16),
//   child: FormGroup(
//     title: 'Example textarea',
//     maxLines: 3,
//   ),
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Dimensionamento',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   const Text(
//                                     'Defina alturas usando parâmetros como \'lg: true\' e \'sm: true\'.',
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: Column(
//                                       children: const [
//                                         FormGroup(
//                                           lg: true,
//                                           placeholder: 'lg: true',
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsets.symmetric(vertical: 8),
//                                           child: FormGroup(
//                                             placeholder: 'Entrada padrão',
//                                           ),
//                                         ),
//                                         FormGroup(
//                                           sm: true,
//                                           placeholder: 'sm: true',
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// FormGroup(
//   lg: true,
//   placeholder: 'lg: true',
// ),
// Padding(
//   padding:
//       EdgeInsets.symmetric(vertical: 8),
//   child: FormGroup(
//     placeholder: 'Entrada padrão',
//   ),
// ),
// FormGroup(
//   sm: true,
//   placeholder: 'sm: true',
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Desabilitado',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   const Text(
//                                     'Adicione o disabled atributo booleano em uma entrada para dar a ela uma aparência esmaecida, remover eventos de ponteiro e evitar o foco.',
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: Column(
//                                       children: const [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 8.0),
//                                           child: FormGroup(
//                                             placeholder: 'entrada desabilitada',
//                                             disabled: true,
//                                           ),
//                                         ),
//                                         FormGroup(
//                                           placeholder:
//                                               'Disabled readonly input',
//                                           disabled: true,
//                                           readonly: true,
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// Padding(
//   padding: EdgeInsets.only(bottom: 8.0),
//   child: FormGroup(
//     placeholder: 'entrada desabilitada',
//     disabled: true,
//   ),
// ),
// FormGroup(
//   placeholder:
//       'Disabled readonly input',
//   disabled: true,
//   readonly: true,
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Somente leitura',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   const Text(
//                                     'Adicione o readonly atributo booleano em uma entrada para impedir a modificação do valor da entrada. readonly as entradas ainda podem ser focadas e selecionadas, enquanto as disabled entradas não.',
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: Column(
//                                       children: const [
//                                         FormGroup(
//                                           placeholder: 'Readonly input here...',
//                                           readonly: true,
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// FormGroup(
//   placeholder: 'Readonly input here...',
//   readonly: true,
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Somente leitura de texto simples',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   const Text(
//                                     'Se você quiser ter <input readonly>elementos em seu formulário estilizados como texto sem formatação, substitua .form-controlpor .form-control-plaintextpara remover o estilo de campo de formulário padrão e preservar o correto margine padding.',
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: Column(
//                                       children: const [
//                                         Padding(
//                                           padding: EdgeInsets.only(bottom: 8.0),
//                                           child: FormGroupInlinePlainText(
//                                             title: 'E-mail',
//                                             value: 'email@example.com',
//                                           ),
//                                         ),
//                                         FormGroupInline(
//                                           title: 'Senha',
//                                           obscureText: true,
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// Padding(
//   padding: EdgeInsets.only(bottom: 8.0),
//   child: FormGroupInlinePlainText(
//     title: 'E-mail',
//     value: 'email@example.com',
//   ),
// ),
// FormGroupInline(
//   title: 'Senha',
//   obscureText: true,
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
//                                   BTCard(
//                                     footerBackground: BTColors.gray100,
//                                     bodyPadding: const EdgeInsets.all(24),
//                                     body: BTRow(
//                                       children: [
//                                         BTCol(
//                                           sizes: const [
//                                             'col-xl-3',
//                                             'col-lg-3',
//                                             'col-md-3',
//                                             'col-sm-12',
//                                             'col-xs-12',
//                                           ],
//                                           child: const Padding(
//                                             padding: EdgeInsets.only(top: 4.0),
//                                             child: FormGroupInlinePlainText(
//                                               sizesField: ['col-12'],
//                                               value: 'email@example.com',
//                                             ),
//                                           ),
//                                         ),
//                                         BTCol(
//                                           sizes: const [
//                                             'col-xl-3',
//                                             'col-lg-3',
//                                             'col-md-3',
//                                             'col-sm-12',
//                                             'col-xs-12',
//                                           ],
//                                           child: const FormGroupInline(
//                                             sizesField: ['col-12'],
//                                             placeholder: 'Senha',
//                                           ),
//                                         ),
//                                         BTCol(
//                                           sizes: const [
//                                             'col-xl-3',
//                                             'col-lg-3',
//                                             'col-md-3',
//                                             'col-sm-12',
//                                             'col-xs-12',
//                                           ],
//                                           child: Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 4.0),
//                                             child: BTButton(
//                                               onPressed: () {},
//                                               child: const Text(
//                                                 'Confirm identity',
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     footerPadding: const EdgeInsets.all(0),
//                                     footer: HighlightView(
//                                       '''
// Padding(
//   padding: EdgeInsets.only(bottom: 8.0),
//   child: FormGroupInlinePlainText(
//     title: 'E-mail',
//     value: 'email@example.com',
//   ),
// ),
// FormGroupInline(
//   title: 'Senha',
//   obscureText: true,
// ),
//                                         ''',
//                                       language: 'dart',
//                                       theme: foundationTheme,
//                                       padding: const EdgeInsets.all(16),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 32,
//                                   ),
//                                   Text(
//                                     'Entrada de arquivo',
//                                     style: GetBootstrap.typography.headline2,
//                                   ),
//                                   const SizedBox(
//                                     height: 8,
//                                   ),
                                  BTCard(
                                    footerBackground: BTColors.gray100,
                                    bodyPadding: const EdgeInsets.all(24),
                                    body: FormGroupFile(
                                      title: 'Default file input example',
                                      fileName: fileName,
                                      onPressed: () async {
                                        FilePickerResult? result =
                                            await FilePicker.platform
                                                .pickFiles();

                                        setState(() {
                                          fileName = result!.files.first.name;
                                        });
                                      },
                                    ),
                                    footerPadding: const EdgeInsets.all(0),
                                    footer: HighlightView(
                                      '''
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
