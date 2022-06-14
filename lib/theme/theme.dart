import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

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
    return const InputDecorationTheme(
      fillColor: CoinColors.black,
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    );
  }
}
