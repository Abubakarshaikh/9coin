import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CoinTextStyle {
  static const _baseTextStyle = TextStyle(
    fontFamily: 'Poppins',
    color: CoinColors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get title1 {
    return _baseTextStyle.copyWith(
      fontSize: 16.0,
      color: CoinColors.white,
    );
  }

  static TextStyle get title2 {
    return _baseTextStyle.copyWith(
      fontSize: 14.0,
      color: CoinColors.white,
    );
  }

  static TextStyle get title3 {
    return _baseTextStyle.copyWith(
      fontSize: 12.0,
    );
  }

  static TextStyle get title4 {
    return _baseTextStyle.copyWith(
      fontSize: 10.0,
    );
  }

  static TextStyle get title5 {
    return _baseTextStyle.copyWith(
      fontSize: 8.0,
    );
  }
}
