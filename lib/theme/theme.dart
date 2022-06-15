import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

abstract class AppTheme {
  static get standard {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: CoinColors.black12,
      elevatedButtonTheme: _elevatedButtonTheme,
      iconTheme: _iconTheme,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  static get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: CoinColors.orange,
        fixedSize: const Size(0, 45),
      ),
    );
  }

  static get _iconTheme {
    return const IconThemeData(
      color: CoinColors.orange,
      size: 20,
    );
  }

  static get _inputDecorationTheme {
    return InputDecorationTheme(
      fillColor: CoinColors.black12,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide.none,
      ),
      hintStyle: CoinTextStyle.title3.copyWith(color: CoinColors.black54),
    );
  }
}
