import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bootstrap {
  static bool showSidebar(BoxConstraints boxConstraints) {
    return ['xxl', 'xl', 'lg'].contains(getLayoutSize(boxConstraints));
  }

  static String getLayoutSize(BoxConstraints boxConstraints) {
    const int xsWidth = 576;
    const int smWidth = 768;
    const int mdWidth = 992;
    const int lgWidth = 1200;
    const int xlWidth = 1400;

    if (boxConstraints.maxWidth < xsWidth) {
      return 'xs';
    } else if (boxConstraints.maxWidth < smWidth &&
        boxConstraints.maxWidth >= xsWidth) {
      return 'sm';
    } else if (boxConstraints.maxWidth < mdWidth &&
        boxConstraints.maxWidth >= smWidth) {
      return 'md';
    } else if (boxConstraints.maxWidth < lgWidth &&
        boxConstraints.maxWidth >= mdWidth) {
      return 'lg';
    } else if (boxConstraints.maxWidth < xlWidth &&
        boxConstraints.maxWidth >= lgWidth) {
      return 'xl';
    } else if (boxConstraints.maxWidth >= xlWidth) {
      return 'xxl';
    } else {
      return 'xxl';
    }
  }
}
