import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class HeaderWidget extends StatefulWidget {
  final bool showSidebarButton;
  const HeaderWidget({super.key, required this.showSidebarButton});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: AppBar(
        leading: widget.showSidebarButton ? Container() : null,
        title: BTContainer(
          xxl: true,
          child: (Scaffold.hasDrawer(context))
              ? Center(
                  child: Image.asset(
                    'assets/images/bootstrap_logo.webp',
                    height: 42,
                  ),
                )
              : Row(children: [
                  Image.asset('assets/images/bootstrap_logo.webp', height: 42),
                  TextButton(
                    onPressed: () {
                      log('a');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: BTColors.white,
                      textStyle: BootstrapThemeData.light.textTheme.labelLarge
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    child: const Text('Docs'),
                  ),
                  TextButton(
                    onPressed: () {
                      log('a');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: BTColors.white.withOpacity(0.85),
                    ),
                    child: const Text('Examples'),
                  ),
                  TextButton(
                    onPressed: () {
                      log('a');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: BTColors.white.withOpacity(0.85),
                    ),
                    child: const Text('Icons'),
                  ),
                  TextButton(
                    onPressed: () {
                      log('a');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: BTColors.white.withOpacity(0.85),
                    ),
                    child: const Text('Themes'),
                  ),
                  TextButton(
                    onPressed: () {
                      log('a');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: BTColors.white.withOpacity(0.85),
                    ),
                    child: const Text('Blog'),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        log('a');
                      },
                      child: Icon(
                        FontAwesomeIcons.github,
                        size: 16,
                        color: Colors.white.withOpacity(0.85),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        log('a');
                      },
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        size: 16,
                        color: Colors.white.withOpacity(0.85),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        log('a');
                      },
                      child: Image.asset(
                        'assets/images/open.webp',
                        height: 16,
                        color: Colors.white.withOpacity(0.85),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    height: 34,
                    child: VerticalDivider(
                      width: 1,
                      color: Colors.white.withOpacity(0.25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PopupMenuButton(
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v5.2'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v5.1.3'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v5.0.2'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v4.6.x'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v3.4.1'),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            log('a');
                          },
                          height: 36,
                          child: const Text('v2.3.2'),
                        ),
                      ],
                      offset: const Offset(0, 32),
                      child: Center(
                        child: Row(children: [
                          Text(
                            'v5.2',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: Colors.white.withOpacity(0.85),
                                ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            FontAwesomeIcons.caretDown,
                            size: 12,
                            color: Colors.white.withOpacity(0.85),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                ]),
        ),
        backgroundColor: const Color(0xFF712CF9),
      ),
    );
  }
}
