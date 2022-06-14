import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  static route() {
    return MaterialPageRoute(builder: (context) => const NotificationPage());
  }

  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Notification Page"),
      ),
    );
  }
}
