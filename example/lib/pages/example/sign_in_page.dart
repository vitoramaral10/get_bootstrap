import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 300),
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Image.asset(
                          'assets/images/bootstrap-logo.png',
                          width: 72,
                          height: 57,
                          filterQuality: FilterQuality.medium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          'Please sign in',
                          style: GetBootstrap.typography.headline3!
                              .copyWith(fontWeight: FontWeight.w100),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 1),
                        child: const FormGroup(
                          labelText: 'Email address',
                          size: Size.lg,
                          backgroundColor: BTColors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: FormGroup(
                          labelText: 'Password',
                          size: Size.lg,
                          backgroundColor: BTColors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: FormCheckbox(
                          value: false,
                          label: const Text('Remember me'),
                          onChanged: (final value) {
                            log(value.toString());
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BTButton(
                              size: Size.lg,
                              child: Text(
                                'Sign in',
                                style: GetBootstrap.typography.bodyText1!
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 48, bottom: 16),
                        child: Text(
                          '© 2017–2022',
                          style: TextStyle(color: BTColors.secondary),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFf5f5f5),
      );
}
