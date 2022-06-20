import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  static Route<EditProfilePage> route() {
    return MaterialPageRoute(builder: (context) => const EditProfilePage());
  }

  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Profile"),
      ),
      body: const Center(
        child: Text("Edit Profile"),
      ),
    );
  }
}
