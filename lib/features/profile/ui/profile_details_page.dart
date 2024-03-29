import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/home/components/my_bottom_navigation_bar.dart';
import 'package:ninecoin/features/profile/components/circular_icon.dart';
import 'package:ninecoin/features/profile/components/edit_profile_tile.dart';
import 'package:ninecoin/features/profile/components/profile_circular_picture.dart';
import 'package:ninecoin/features/profile/components/profile_tile.dart';
import 'package:ninecoin/features/profile/ui/edit_profile_page.dart';
import 'package:ninecoin/typography/text_styles.dart';

class ProfileDetailsPage extends StatelessWidget {
  static Route<ProfileDetailsPage> route() {
    return MaterialPageRoute(builder: (context) => const ProfileDetailsPage());
  }

  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Profile Details", style: CoinTextStyle.title3Bold),
        actions: [
          CircularIcon(
              icon: Image.asset(
                Assets.edit,
                height: 14.5,
                width: 14.5,
                color: CoinColors.orange12,
              ),
              onTap: () {
                Navigator.push(context, EditProfilePage.route());
              }),
          const SizedBox(width: 20.0),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 35),
            alignment: Alignment.center,
            color: CoinColors.black12,
            child: Column(
              children: [
                const ProfileCircularPicture(),
                const SizedBox(height: 10),
                Text("5630918957",
                    style: CoinTextStyle.title4
                        .copyWith(color: CoinColors.orange)),
                Text("Tan Qing Fong",
                    style: CoinTextStyle.title1Bold.copyWith(fontSize: 22)),
                const Text("qingfong@gmail.com"),
              ],
            ),
          ),
          EditProfileTile(
            imageUrl: Assets.gender,
            title1: "Gender",
            title2: "Male",
          ),
          EditProfileTile(
            imageUrl: Assets.phone,
            title1: "Contact Number",
            title2: "010 599 6883",
          ),
          EditProfileTile(
            imageUrl: Assets.email,
            title1: "Address",
            title2:
                "No. 560, Taman University 6,\n14000 Bukit Mertajam Pulau Pinang.",
            isShowDivider: false,
          ),
        ],
      ),
    );
  }
}
