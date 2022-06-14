import 'package:flutter/material.dart';
import 'features/home/ui/home_view.dart';
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
      home: HomeView(),
    );
  }
}
