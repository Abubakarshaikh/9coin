import 'package:flutter/material.dart';

class ProfileDetailsPage extends StatelessWidget {
  static Route<ProfileDetailsPage> route() {
    return MaterialPageRoute(builder: (context) => const ProfileDetailsPage());
  }

  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile Details"),
      ),
      body: const Center(
        child: Text("Profile Details"),
      ),
    );
  }
}
