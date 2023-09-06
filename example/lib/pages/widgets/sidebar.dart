import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(final BuildContext context) => BTSidebar(
        children: [
          BTSidebarGroup(
            title: 'Começando',
            icon: FontAwesomeIcons.bookOpen,
            iconColor: BTColors.indigo,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(
                    context,
                    '/getting-started/introduction',
                  );
                },
                child: Text(
                  'Introdução',
                  style: GetBootstrap.typography.small,
                ),
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Customizar',
            icon: FontAwesomeIcons.swatchbook,
            iconColor: BTColors.pink,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/customize/color');
                },
                child: Text(
                  'Cores',
                  style: GetBootstrap.typography.small,
                ),
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Layout',
            icon: FontAwesomeIcons.cubesStacked,
            iconColor: BTColors.teal,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/layout/breakpoints');
                },
                child: Text(
                  'Breakpoints',
                  style: GetBootstrap.typography.small,
                ),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/layout/grid');
                },
                child: Text(
                  'Grid',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Columns',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Gutters',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Utilities',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Z-index',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'CSS Grid',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Content',
            icon: FontAwesomeIcons.file,
            iconColor: BTColors.gray600,
            children: [
              Text(
                'Reboot',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/content/typography');
                },
                child: Text(
                  'Typography',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Images',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Tables',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Button group',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Card',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Carousel',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Close button',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Collapse',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Dropdowns',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'List group',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/components/modal');
                },
                child: Text(
                  'Modal',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Navbar',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Navs & tabs',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Offcanvas',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Pagination',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Placeholders',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Popovers',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Progress',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Scrollspy',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Spinners',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Toasts',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Tooltips',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Helpers',
            icon: FontAwesomeIcons.wandMagicSparkles,
            iconColor: BTColors.orange,
            children: [
              Text(
                'Clearfix',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Color & background',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Colored links',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Position',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Ratio',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Stacks',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Stretched link',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Text truncation',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Vertical rule',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Visually hidden',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Utilities',
            icon: FontAwesomeIcons.diaspora,
            iconColor: BTColors.red,
            children: [
              Text(
                'API',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Background',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Borders',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Colors',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Display',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Flex',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Float',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Interactions',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Opacity',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Overflow',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Position',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Shadows',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Sizing',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Spacing',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Text',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Vertical align',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Visibility',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Extend',
            icon: FontAwesomeIcons.screwdriverWrench,
            iconColor: BTColors.blue,
            children: [
              Text(
                'Approach',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Icons',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'About',
            icon: FontAwesomeIcons.globe,
            iconColor: BTColors.indigo,
            children: [
              Text(
                'Overview',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Team',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Brand',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/about/license');
                },
                child: const Text(
                  'License',
                ),
              ),
              Text(
                'Figures',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Forms',
            icon: FontAwesomeIcons.listUl,
            iconColor: BTColors.blue,
            children: [
              Text(
                'Overview',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/forms/form_control');
                },
                child: Text(
                  'Controles de formulário',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Select',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Checks & radios',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Range',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Input group',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Floating labels',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'layout',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Validation',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Components',
            icon: FontAwesomeIcons.cubes,
            iconColor: BTColors.cyan,
            children: [
              Text(
                'Accordion',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/components/alerts');
                },
                child: Text(
                  'Alerts',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Badge',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Breadcrumb',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/components/buttons');
                },
                child: Text(
                  'Botões',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Button group',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Card',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Carousel',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Close button',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Collapse',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Dropdowns',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'List group',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Modal',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Navbar',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Navs & tabs',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Offcanvas',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Pagination',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Placeholders',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Popovers',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Progress',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Scrollspy',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Spinners',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Toasts',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Tooltips',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Helpers',
            icon: FontAwesomeIcons.wandMagicSparkles,
            iconColor: BTColors.orange,
            children: [
              Text(
                'Clearfix',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Color & background',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Colored links',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Position',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Ratio',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Stacks',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Stretched link',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Text truncation',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Vertical rule',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Visually hidden',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Utilities',
            icon: FontAwesomeIcons.diaspora,
            iconColor: BTColors.red,
            children: [
              Text(
                'API',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Background',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Borders',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Colors',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Display',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Flex',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Float',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Interactions',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Opacity',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Overflow',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Position',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Shadows',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Sizing',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Spacing',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Text',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Vertical align',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Visibility',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'Extend',
            icon: FontAwesomeIcons.screwdriverWrench,
            iconColor: BTColors.blue,
            children: [
              Text(
                'Approach',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Icons',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
          BTSidebarGroup(
            title: 'About',
            icon: FontAwesomeIcons.globe,
            iconColor: BTColors.indigo,
            children: [
              Text(
                'Overview',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Team',
                style: GetBootstrap.typography.small,
              ),
              Text(
                'Brand',
                style: GetBootstrap.typography.small,
              ),
              InkWell(
                onTap: () async {
                  await Navigator.pushNamed(context, '/about/license');
                },
                child: Text(
                  'License',
                  style: GetBootstrap.typography.small,
                ),
              ),
              Text(
                'Translations',
                style: GetBootstrap.typography.small,
              ),
            ],
          ),
        ],
      );
}
