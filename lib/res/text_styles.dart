import 'package:app/res/attributes.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._(this._context);

  factory TextStyles.of(BuildContext context) {
    return TextStyles._(context);
  }

  final BuildContext _context;

  TextTheme get _theme => Theme.of(_context).textTheme;

  TextStyle get buttonText => TextStyle(
        fontSize: 18.0,
        color: Attributes.backgroundColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get cardTitle => TextStyle(
        fontSize: 16.0,
        color: Attributes.backgroundColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w600,
      );

  TextStyle get cardTitleInverted => TextStyle(
        fontSize: 16.0,
        color: Attributes.primaryTextColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w600,
      );

  TextStyle get dropdownTitle => TextStyle(
        fontSize: 14.0,
        color: Attributes.primaryTextColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w600,
      );

  TextStyle get cardHintText => TextStyle(
        color: Attributes.disabledTextColor,
      );

  TextStyle get popupTitle => TextStyle(
        fontSize: 24.0,
        color: Attributes.primaryTextColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get popupFees => TextStyle(
        fontSize: 18.0,
        color: Attributes.primaryTextColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get popupFeesRed => TextStyle(
        fontSize: 18.0,
        color: Colors.redAccent,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get popupReceive => TextStyle(
        fontSize: 24.0,
        color: Attributes.primaryTextColor,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get popupReceiveGreen => TextStyle(
        fontSize: 24.0,
        color: Colors.green,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );

  TextStyle get popupFeesPayer => TextStyle(
        fontSize: 12.0,
        color: Colors.redAccent,
        fontFamily: 'Aventa-Regular',
        fontWeight: FontWeight.w800,
      );
  TextStyle? get headline4 => _theme.headline4;
}
