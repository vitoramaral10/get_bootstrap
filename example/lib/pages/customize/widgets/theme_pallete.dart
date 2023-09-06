import 'package:flutter/material.dart';
import 'package:get_bootstrap/get_bootstrap.dart';

class ThemePallete extends StatelessWidget {
  const ThemePallete({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => BTRow(
        children: [
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.primary,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Primary',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.secondary,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Secondary',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.success,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Success',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.danger,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Danger',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.warning,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Warning'),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.info,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Info'),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.light,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Light'),
                ),
              ),
            ),
          ),
          BTCol(
            lg: 4,
            child: Container(
              color: BTColors.dark,
              width: double.infinity,
              height: 50,
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Dark',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
