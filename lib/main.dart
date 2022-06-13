import 'package:flutter/material.dart';
import 'package:ninecoin/home_page.dart';
import 'theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.standard,
      home: HomePage(),
    );
  }
}
