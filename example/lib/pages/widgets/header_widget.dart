import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_bootstrap/components/theme_data.dart';
import 'package:get_bootstrap/layout/bt_container.dart';

class HeaderWidget extends StatefulWidget {
  final bool? showSidebarButton;
  const HeaderWidget({super.key, this.showSidebarButton});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: AppBar(
          backgroundColor: const Color(0xFF712CF9),
          leading: widget.showSidebarButton! ? Container() : null,
          title: BTContainer(
            xxl: true,
            child: (Scaffold.hasDrawer(context))
                ? Center(
                    child: Image.asset(
                    'assets/images/bootstrap_logo.webp',
                    height: 42,
                  ),)
                : Row(children: [
                    Image.asset(
                      'assets/images/bootstrap_logo.webp',
                      height: 42,
                    ),
                    TextButton(
                      onPressed: () {log('a');},
                      style: BootstrapThemeData.navLinkActive(),
                      child: const Text('Docs'),
                    ),
                    TextButton(
                      onPressed: () {log('a');},
                      style: BootstrapThemeData.navLink(),
                      child: const Text('Examples'),
                    ),
                    TextButton(
                      onPressed: () {log('a');},
                      style: BootstrapThemeData.navLink(),
                      child: const Text('Icons'),
                    ),
                    TextButton(
                      onPressed: () {log('a');},
                      style: BootstrapThemeData.navLink(),
                      child: const Text('Themes'),
                    ),
                    TextButton(
                      onPressed: () {log('a');},
                      style: BootstrapThemeData.navLink(),
                      child: const Text('Blog'),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {log('a');},
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white.withOpacity(0.85),
                          size: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {log('a');},
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white.withOpacity(0.85),
                          size: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {log('a');},
                        child: Image.asset(
                          'assets/images/open.webp',
                          color: Colors.white.withOpacity(0.85),
                          height: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 34,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: VerticalDivider(
                        color: Colors.white.withOpacity(0.25),
                        width: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PopupMenuButton(
                        offset: const Offset(0, 32),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {log('a');},
                            child: const Text('v5.2'),
                          ),
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {
                              log('a');
                            },
                            child: const Text('v5.1.3'),
                          ),
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {
                              log('a');
                            },
                            child: const Text('v5.0.2'),
                          ),
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {
                              log('a');
                            },
                            child: const Text('v4.6.x'),
                          ),
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {
                              log('a');
                            },
                            child: const Text('v3.4.1'),
                          ),
                          PopupMenuItem(
                            height: 36,
                            onTap: () async {
                              log('a');
                            },
                            child: const Text('v2.3.2'),
                          ),
                        ],
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'v5.2',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      color: Colors.white.withOpacity(0.85),
                                    ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                FontAwesomeIcons.caretDown,
                                size: 12,
                                color: Colors.white.withOpacity(0.85),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                  ]),
          ),),
    );
  }
}
