import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/auth/ui/forgot_password_page.dart';
import 'package:ninecoin/features/auth/ui/signup_page.dart';
import 'package:ninecoin/features/home/ui/home_view.dart';
import 'package:ninecoin/typography/text_styles.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => const LoginPage());
  }

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CoinColors.black,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Image(
                        height: 160,
                        image: AssetImage("assets/logos/login-logo.png")),
                    const SizedBox(height: 24),
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CoinColors.black12,
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: CoinColors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                        suffixIcon: Icon(
                          Icons.email_rounded,
                          color: CoinColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: CoinColors.black12,
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: CoinColors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                        suffixIcon: Icon(
                          Icons.lock,
                          color: CoinColors.orange,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HomeView()));
                      },
                      child: Text(
                        "Login",
                        style: CoinTextStyle.title2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, ForgotPasswordPage.route());
                        },
                        child: Text(
                          "Forgot Password",
                          style: CoinTextStyle.title2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Text("We Are From",
                          style: CoinTextStyle.title3
                              .copyWith(color: Colors.grey)),
                    ),
                    const Center(
                      child: Text(
                        "Color Ins Salon",
                        style: TextStyle(
                          fontFamily: 'Vollkorn SemiBold',
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
                        Flexible(
                          child: Text(
                            "Don't have an account?",
                            style: CoinTextStyle.title2,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, SignupPage.route());
                          },
                          child: Text("Sign Up",
                              style: CoinTextStyle.orangeTitle2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
