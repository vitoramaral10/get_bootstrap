import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Form(
              child: Column(children: [
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
                    lg: true,
                    backgroundColor: BTColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: FormGroup(
                    labelText: 'Password',
                    lg: true,
                    backgroundColor: BTColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
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
                    onChanged: (value) {},
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: BTButton(
                      lg: true,
                      child: Text(
                        'Sign in',
                        style: GetBootstrap.typography.bodyText1!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.only(top: 48, bottom: 16),
                  child: Text(
                    '?? 2017???2022',
                    style: TextStyle(color: BTColors.secondary),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ]),
      backgroundColor: const Color(0xFFf5f5f5),
    );
  }
}
