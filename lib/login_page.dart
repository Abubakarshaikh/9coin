import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: size.width,
                  decoration: const BoxDecoration(
                    // color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage("assets/logos/icon.jpg"),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    suffixIcon: const Icon(
                      Icons.email_rounded,
                      color: CoinColors.orange12,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    suffixIcon: const Icon(
                      Icons.lock,
                      color: CoinColors.orange12,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(9.0))),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Text(
                    "Forgot Password",
                    style: CoinTextStyle.title1,
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Text("We Are From",
                      style: CoinTextStyle.title3.copyWith(color: Colors.grey)),
                ),
                const Center(
                  child: Text(
                    "Color Ins Salon",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: CoinColors.blue26,
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: CoinTextStyle.title2,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "Sign Up",
                      style: CoinTextStyle.title2
                          .copyWith(color: CoinColors.orange12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
