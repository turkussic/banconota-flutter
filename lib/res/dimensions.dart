import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dimensions {
  Dimensions._(this.context);

  factory Dimensions.of(BuildContext context) {
    return Dimensions._(context);
  }

  final BuildContext context;
  Size get _mediaQuery => MediaQuery.of(context).size;

  double get fullHeight => _mediaQuery.height;
  double get fullWidth => _mediaQuery.width;
  double get buttonHeight => 50.0;
  double get cardHeight => 150.0;
  double get rowCardHeight => 100.0;
}
