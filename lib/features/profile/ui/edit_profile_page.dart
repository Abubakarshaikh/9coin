import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/widgets/drop_down_button_with_title.dart';
import 'package:ninecoin/widgets/text_field_with_title.dart';

import '../components/profile_circular_picture.dart';
import 'package:image_picker/image_picker.dart';

@immutable
class EditProfilePage extends StatelessWidget {
  static Route<EditProfilePage> route() {
    return MaterialPageRoute(builder: (context) => EditProfilePage());
  }

  EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CoinColors.fullBlack,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Edit Profile"),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  alignment: Alignment.center,
                  color: CoinColors.black12,
                  child: ProfileCircularPicture(
                    isShowSelectImage: true,
                    onTap: () => imagePickerFromBottom(context),
                  ),
                ),
                const TextFieldWithTitle(
                  title: "Name",
                  hintText: "Tan Qing Fong",
                ),
                const TextFieldWithTitle(
                  title: "Contact Number",
                  hintText: "010 599 6883",
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 4, 16, 0),
                  child: Row(
                    children: [
                      Text("Gender", style: CoinTextStyle.orangeTitle3),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.2,
                              child: Radio(
                                activeColor: CoinColors.orange,
                                value: Gender.male,
                                groupValue: selectedGender,
                                onChanged: (state) {},
                              ),
                            ),
                            Text(
                              "Male",
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black54),
                            ),
                            Transform.scale(
                              scale: 1.2,
                              child: Radio(
                                activeColor: CoinColors.orange,
                                focusColor: CoinColors.orange,
                                value: Gender.female,
                                groupValue: selectedGender,
                                onChanged: (state) {},
                              ),
                            ),
                            Text(
                              "Female",
                              style: CoinTextStyle.title3
                                  .copyWith(color: CoinColors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const TextFieldWithTitle(
                  title: "Address",
                  hintText: "No. 560, Taman University 6",
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                  child: Row(
                    children: [
                      DropDownButtonWithTitle(
                        title: "City",
                        items: cities,
                        hintText: "City",
                        value: null,
                        onChanged: (state) {},
                      ),
                      const SizedBox(width: 10),
                      DropDownButtonWithTitle(
                        title: "State",
                        items: states,
                        hintText: "State",
                        value: null,
                        onChanged: (state) {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                  child: Row(
                    children: [
                      DropDownButtonWithTitle(
                        title: "Post Code",
                        items: postalCodes,
                        hintText: "PostCode",
                        value: null,
                        onChanged: (state) {},
                      ),
                      const SizedBox(width: 10),
                      DropDownButtonWithTitle(
                        title: "Country",
                        items: countries,
                        hintText: "Country",
                        value: null,
                        onChanged: (state) {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Update")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> cities = ["1", "2", "3"];
  final List<String> states = ["1", "2", "3"];

  final List<String> postalCodes = ["1", "2", "3"];
  final List<String> countries = ["1", "2", "3"];

  final Gender selectedGender = Gender.male;

  imagePickerFromBottom(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: CoinColors.transparent,
      constraints: const BoxConstraints.expand(height: 68),
      context: context,
      builder: (contex) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: const BoxDecoration(
              color: CoinColors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              )),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8.0),
                width: 42,
                height: 3.1,
                decoration: BoxDecoration(
                  color: CoinColors.white,
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  await pickImage();
                },
                child: Text("Choose from Photo Album",
                    style: CoinTextStyle.title2),
              ),
            ],
          ),
        );
      },
    );
  }

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      log("Error: $e");
    }
  }
}

enum Gender { male, female }
