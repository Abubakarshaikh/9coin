import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/auth/ui/login_page.dart';
import 'package:ninecoin/features/home/ui/home_view.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/utilities/dialogs/create_account.dart';
import 'package:ninecoin/utilities/dialogs/successful_create.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (context) => const SignupPage());
  }

  @override
  Widget build(BuildContext context) {
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
          body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            children: [
              Center(
                child: Text("Create an Account",
                    style: CoinTextStyle.title1.copyWith(
                        color: CoinColors.orange, fontWeight: FontWeight.w600)),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(hintText: "User Name"),
              ),
              const SizedBox(height: 21.5),
              const TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              const SizedBox(height: 21.5),
              const TextField(
                  decoration: InputDecoration(hintText: "Contact Number")),
              const SizedBox(height: 21.5),
              const _InputGender(),
              const SizedBox(height: 21.5),
              const TextField(decoration: InputDecoration(hintText: "Address")),
              const SizedBox(height: 21.5),
              Row(
                children: const [
                  _InputCity(),
                  SizedBox(width: 18),
                  _InputState(),
                ],
              ),
              const SizedBox(height: 21.5),
              Row(
                children: const [
                  _InputPostCode(),
                  SizedBox(width: 18),
                  _InputCountry(),
                ],
              ),
              const SizedBox(height: 21.5),
              const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password")),
              const SizedBox(height: 21.5),
              const TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Re-enter Password")),
              const SizedBox(height: 21.5),
              const _TermsAndCondition(),
              const SizedBox(height: 21.5),
              ElevatedButton(
                onPressed: () async {
                  if (await showCreateAccountDialog(context)) {
                    if (await showSuccessfulCreateAccountDialog(context)) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HomeView()));
                    }
                  }
                },
                child: const Text("Sign up"),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Already have an account?",
                      style: CoinTextStyle.title3,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, LoginPage.route());
                    },
                    child: Text("Sign In", style: CoinTextStyle.orangeTitle3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InputCity extends StatefulWidget {
  const _InputCity({
    Key? key,
  }) : super(key: key);

  @override
  State<_InputCity> createState() => _InputCityState();
}

class _InputCityState extends State<_InputCity> {
  List<String> cities = ["Paris", "London", "New York"];

  String? selectCity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: CoinColors.black12,
            border: Border.all(color: CoinColors.black12),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            value: selectCity,
            dropdownColor: CoinColors.black12,
            borderRadius: BorderRadius.circular(12),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[700],
            ),
            hint: Text("City",
                style:
                    CoinTextStyle.title3.copyWith(color: CoinColors.black54)),
            isExpanded: true,
            iconSize: 36,
            underline: const SizedBox(),
            onChanged: (String? state) {
              setState(() {
                selectCity = state;
              });
            },
            items: List.generate(
              cities.length,
              (index) {
                return DropdownMenuItem(
                    value: cities[index], child: Text(cities[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _InputState extends StatefulWidget {
  const _InputState({
    Key? key,
  }) : super(key: key);

  @override
  State<_InputState> createState() => _InputStateState();
}

class _InputStateState extends State<_InputState> {
  List<String> states = ["Sabah", "Sarawak	", "Selangor"];

  String? selectState;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: CoinColors.black12,
            border: Border.all(color: CoinColors.black12),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            value: selectState,
            dropdownColor: CoinColors.black12,
            borderRadius: BorderRadius.circular(12),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[700],
            ),
            hint: Text("State",
                style:
                    CoinTextStyle.title3.copyWith(color: CoinColors.black54)),
            isExpanded: true,
            iconSize: 36,
            underline: const SizedBox(),
            onChanged: (String? state) {
              setState(() {
                selectState = state;
              });
            },
            items: List.generate(
              states.length,
              (index) {
                return DropdownMenuItem(
                    value: states[index], child: Text(states[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _InputGender extends StatefulWidget {
  const _InputGender({
    Key? key,
  }) : super(key: key);

  @override
  State<_InputGender> createState() => _InputGenderState();
}

class _InputGenderState extends State<_InputGender> {
  List<String> genders = ["Male", "Female"];

  String? gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
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
          value: gender,
          hint: Text("Select Gender",
              style: CoinTextStyle.title3.copyWith(color: CoinColors.black54)),
          isExpanded: true,
          iconSize: 36,
          underline: const SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              gender = newValue;
            });
          },
          items: List.generate(
            genders.length,
            (index) {
              return DropdownMenuItem(
                  value: genders[index], child: Text(genders[index]));
            },
          ),
        ),
      ),
    );
  }
}

class _TermsAndCondition extends StatefulWidget {
  const _TermsAndCondition({
    Key? key,
  }) : super(key: key);

  @override
  State<_TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<_TermsAndCondition> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          side: const BorderSide(color: CoinColors.white, width: 1.8),
          checkColor: CoinColors.white,
          // fillColor: CoinColors.dialogTextColor,
          activeColor: CoinColors.dialogTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          value: isChecked,
          onChanged: (bool? state) {
            setState(() {
              isChecked = state;
            });
          },
        ),
        Flexible(
          child: RichText(
            text: TextSpan(
                text: "By Continuing Sign up you agree to the following our",
                style: CoinTextStyle.title3,
                children: [
                  TextSpan(
                      text: " Term & Conditions.",
                      style: CoinTextStyle.orangeTitle3)
                ]),
          ),
        ),
      ],
    );
  }
}

class _InputPostCode extends StatefulWidget {
  const _InputPostCode({
    Key? key,
  }) : super(key: key);

  @override
  State<_InputPostCode> createState() => _InputPostCodeState();
}

class _InputPostCodeState extends State<_InputPostCode> {
  List<String> postCodes = ["34544", "34000", "91200"];

  String? selectPostCode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: CoinColors.black12,
            border: Border.all(color: CoinColors.black12),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            value: selectPostCode,
            dropdownColor: CoinColors.black12,
            borderRadius: BorderRadius.circular(12),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[700],
            ),
            hint: Text("Post Code",
                style:
                    CoinTextStyle.title3.copyWith(color: CoinColors.black54)),
            isExpanded: true,
            iconSize: 36,
            underline: const SizedBox(),
            onChanged: (String? state) {
              setState(() {
                selectPostCode = state;
              });
            },
            items: List.generate(
              postCodes.length,
              (index) {
                return DropdownMenuItem(
                    value: postCodes[index], child: Text(postCodes[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _InputCountry extends StatefulWidget {
  const _InputCountry({
    Key? key,
  }) : super(key: key);

  @override
  State<_InputCountry> createState() => _InputCountryState();
}

class _InputCountryState extends State<_InputCountry> {
  List<String> countries = ["America", "Dubai", "Malasia"];

  String? selectCountry;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 48,
        decoration: BoxDecoration(
            color: CoinColors.black12,
            border: Border.all(color: CoinColors.black12),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton(
            value: selectCountry,
            dropdownColor: CoinColors.black12,
            borderRadius: BorderRadius.circular(12),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[700],
            ),
            hint: Text("Country",
                style:
                    CoinTextStyle.title3.copyWith(color: CoinColors.black54)),
            isExpanded: true,
            iconSize: 36,
            underline: const SizedBox(),
            onChanged: (String? state) {
              setState(() {
                selectCountry = state;
              });
            },
            items: List.generate(
              countries.length,
              (index) {
                return DropdownMenuItem(
                    value: countries[index], child: Text(countries[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}
