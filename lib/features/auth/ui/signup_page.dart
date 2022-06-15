import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/auth/ui/login_page.dart';
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
    return Scaffold(
      backgroundColor: CoinColors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: CoinTextStyle.title1.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: Padding(
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
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "User Name",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Contact Number",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: CoinColors.black26,
                      border: Border.all(color: CoinColors.black26),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(12),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey[700],
                      ),
                      hint: Text(
                        "Select Gender",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                      ),
                      isExpanded: true,
                      iconSize: 36,
                      underline: SizedBox(),
                      onChanged: (newValue) {},
                      items: List.generate(
                        gender.length,
                        (index) {
                          return DropdownMenuItem(
                              value: gender[index], child: Text(gender[index]));
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Address",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: CoinColors.black26,
                            border: Border.all(color: CoinColors.black26),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(12),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey[700],
                            ),
                            hint: Text(
                              "City",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                            ),
                            isExpanded: true,
                            iconSize: 36,
                            underline: SizedBox(),
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
                    SizedBox(width: 18),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: CoinColors.black26,
                            border: Border.all(color: CoinColors.black26),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(12),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey[700],
                            ),
                            hint: Text(
                              "State",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                            ),
                            isExpanded: true,
                            iconSize: 36,
                            underline: SizedBox(),
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
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: CoinColors.black26,
                            border: Border.all(color: CoinColors.black26),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(12),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey[700],
                            ),
                            hint: Text(
                              "PostCode",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                            ),
                            isExpanded: true,
                            iconSize: 36,
                            underline: SizedBox(),
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
                    SizedBox(width: 18),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: CoinColors.black26,
                            border: Border.all(color: CoinColors.black26),
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            borderRadius: BorderRadius.circular(12),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey[700],
                            ),
                            hint: Text(
                              "Country",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0),
                            ),
                            isExpanded: true,
                            iconSize: 36,
                            underline: SizedBox(),
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
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[800],
                    contentPadding: const EdgeInsets.all(10.0),
                    hintText: "Re-enter Password",
                    hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
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
                      style: CoinTextStyle.title4.copyWith(color: Colors.white),
                    )),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
                const SizedBox(height: 20),
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
    );
  }
}
