import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';

class ForgotPasswordPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => const ForgotPasswordPage());
  }

  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: CoinColors.black12,
            centerTitle: true,
            title: Text(
              "Forgot Password",
              style: CoinTextStyle.title1,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Reset Your Password",
                    style: CoinTextStyle.title1.copyWith(
                      color: CoinColors.orange,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                      "Please enter your email address.You will receive a code to create a new  password via email.",
                      style: CoinTextStyle.title4,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Your email address",
                      )),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Reset Password",
                      style: CoinTextStyle.title2
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
