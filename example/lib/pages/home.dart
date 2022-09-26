import 'package:flutter/material.dart';

import 'widgets/header_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xFFffffff).withAlpha(3),
                          const Color(0xFFffffff),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
