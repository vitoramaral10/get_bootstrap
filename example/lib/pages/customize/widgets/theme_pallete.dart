import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class ThemePallete extends StatelessWidget {
  const ThemePallete({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BTRow(
      children: [
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.primary,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Primary', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.secondary,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Secondary', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.success,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Success', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.danger,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Danger', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.warning,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Warning',
                ),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.info,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Info',
                ),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.light,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Light',
                ),
              ),
            ),
          ),
        ),
        BTCol(
          sizes: const ['col-lg-4', 'col-xl-4', 'col-xxl-4'],
          child: Container(
            height: 50,
            width: double.infinity,
            color: BTColors.dark,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Dark', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
