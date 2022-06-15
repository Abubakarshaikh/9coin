import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/auth/ui/login_page.dart';
import 'package:ninecoin/features/home/ui/home_view.dart';
import 'package:ninecoin/typography/text_styles.dart';

class SignupPage extends StatefulWidget {
  static Route route() {
    return MaterialPageRoute(builder: (context) => const SignupPage());
  }

  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final List<String> gender = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CoinColors.black,
          appBar: AppBar(
            backgroundColor: CoinColors.black12,
            centerTitle: true,
            title: Text(
              "Sign Up",
              style: CoinTextStyle.title1.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("Create an Account",
                        style: CoinTextStyle.title1.copyWith(
                            color: CoinColors.orange12,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 6),
                  const TextField(
                    decoration: InputDecoration(hintText: "User Name"),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                      decoration: InputDecoration(hintText: "Contact Number")),
                  const SizedBox(height: 10),
                  Container(
                    height: 48,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: CoinColors.black12,
                        border: Border.all(color: CoinColors.black12),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        dropdownColor: CoinColors.black26,
                        borderRadius: BorderRadius.circular(12),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey[700],
                        ),
                        hint: Text("Select Gender",
                            style: CoinTextStyle.title3
                                .copyWith(color: CoinColors.black54)),
                        isExpanded: true,
                        iconSize: 36,
                        underline: const SizedBox(),
                        onChanged: (newValue) {},
                        items: List.generate(
                          gender.length,
                          (index) {
                            return DropdownMenuItem(
                                value: gender[index],
                                child: Text(gender[index]));
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                      decoration: InputDecoration(hintText: "Address")),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: CoinColors.black12,
                              border: Border.all(color: CoinColors.black12),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              dropdownColor: CoinColors.black12,
                              borderRadius: BorderRadius.circular(12),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[700],
                              ),
                              hint: Text("City",
                                  style: CoinTextStyle.title3
                                      .copyWith(color: CoinColors.black54)),
                              isExpanded: true,
                              iconSize: 36,
                              underline: const SizedBox(),
                              onChanged: (newValue) {},
                              items: List.generate(
                                gender.length,
                                (index) {
                                  return DropdownMenuItem(
                                      value: gender[index],
                                      child: Text(gender[index]));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 48,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: CoinColors.black12,
                              border: Border.all(color: CoinColors.black12),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              dropdownColor: CoinColors.black12,
                              borderRadius: BorderRadius.circular(12),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[700],
                              ),
                              hint: Text(
                                "State",
                                style: CoinTextStyle.title3
                                    .copyWith(color: CoinColors.black54),
                              ),
                              isExpanded: true,
                              iconSize: 36,
                              underline: const SizedBox(),
                              onChanged: (newValue) {},
                              items: List.generate(
                                gender.length,
                                (index) {
                                  return DropdownMenuItem(
                                      value: gender[index],
                                      child: Text(gender[index]));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: CoinColors.black12,
                              border: Border.all(color: CoinColors.black12),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              dropdownColor: CoinColors.black12,
                              borderRadius: BorderRadius.circular(12),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[700],
                              ),
                              hint: Text(
                                "PostCode",
                                style: CoinTextStyle.title3
                                    .copyWith(color: CoinColors.black54),
                              ),
                              isExpanded: true,
                              iconSize: 36,
                              underline: const SizedBox(),
                              onChanged: (newValue) {},
                              items: List.generate(
                                gender.length,
                                (index) {
                                  return DropdownMenuItem(
                                      value: gender[index],
                                      child: Text(gender[index]));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 48,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: CoinColors.black12,
                              border: Border.all(color: CoinColors.black12),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              dropdownColor: CoinColors.black12,
                              borderRadius: BorderRadius.circular(12),
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey[700],
                              ),
                              hint: Text("Country",
                                  style: CoinTextStyle.title3
                                      .copyWith(color: CoinColors.black54)),
                              isExpanded: true,
                              iconSize: 36,
                              underline: const SizedBox(),
                              onChanged: (newValue) {},
                              items: List.generate(
                                gender.length,
                                (index) {
                                  return DropdownMenuItem(
                                      value: gender[index],
                                      child: Text(gender[index]));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password")),
                  const SizedBox(height: 10),
                  const TextField(
                      obscureText: true,
                      decoration:
                          InputDecoration(hintText: "Re-enter Password")),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.app,
                            size: 25,
                            color: Colors.white,
                          )),
                      Flexible(
                          child: Text(
                        "By Continuing Sign up you agree to the following our Terms and Conditions",
                        style:
                            CoinTextStyle.title4.copyWith(color: Colors.white),
                      )),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      Navigator.push(context, HomeView.route());
                    },
                    child: const Text("Sign up"),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: CoinTextStyle.title2,
                      ),
                      const SizedBox(width: 2),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, LoginPage.route());
                        },
                        child: Text(
                          "Sign In",
                          style: CoinTextStyle.title2
                              .copyWith(color: CoinColors.orange12),
                        ),
                      ),
                    ],
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
