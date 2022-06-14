import 'package:flutter/material.dart';
import 'package:ninecoin/login_page.dart';
import 'package:ninecoin/signup_page1.dart';
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
      // home: HomePage(),
      // home: const LoginPage(),
      home: SignupPage(),
    );
  }
}
