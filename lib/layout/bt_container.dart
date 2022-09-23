import 'package:flutter/material.dart';

class BTContainer extends StatelessWidget {
  const BTContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) {
        return Container(
          width: _currentWidth(boxConstraints),
        );
      },
    );
  }

  double _currentWidth(BoxConstraints boxConstraints) {
    if (boxConstraints.maxWidth > 576) {
      // Small devices (landscape phones, 576px and up)
      return 540;
    } else if (boxConstraints.maxWidth > 768) {
      // Medium devices (tablets, 768px and up)
      return 720;
    } else if (boxConstraints.maxWidth > 992) {
      // Large devices (desktops, 992px and up)
      return 960;
    } else if (boxConstraints.maxWidth > 1200) {
      // Extra large devices (large desktops, 1200px and up)
      return 1200;
    } else {
      //Extra small devices (portrait phones, less than 576px)
      return boxConstraints.maxWidth;
    }
  }
}
