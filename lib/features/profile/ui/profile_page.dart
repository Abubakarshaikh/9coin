import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/profile/components/profile_circular_picture.dart';
import 'package:ninecoin/features/profile/components/profile_tile.dart';
import 'package:ninecoin/features/profile/ui/helps_page.dart';
import 'package:ninecoin/features/profile/ui/lucky_draw_information_page.dart';
import 'package:ninecoin/features/profile/ui/profile_details_page.dart';
import 'package:ninecoin/features/profile/ui/qr_code_page.dart';

class ProfilePage extends StatelessWidget {
  static Route<ProfilePage> route() {
    return MaterialPageRoute(builder: (_) => const ProfilePage());
  }

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 28),
            alignment: Alignment.centerLeft,
            color: CoinColors.black12,
            child: Row(
              children: [
                const ProfileCircularPicture(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("ID:5630918957"),
                    Text("Tan Qing Fong"),
                    Text("qingfong@gmail.com"),
                    Text("326 Point"),
                  ],
                ),
              ],
            ),
          ),
          ProfileTile(
            imageUrl: Assets.profileIcon,
            title: "Profile Details",
            onTap: () {
              Navigator.push(context, ProfileDetailsPage.route());
            },
          ),
          ProfileTile(
            imageUrl: Assets.changePassword2,
            title: "Change Password",
            onTap: () {},
          ),
          ProfileTile(
            imageUrl: Assets.qrcode,
            title: "QR Code",
            onTap: () {
              Navigator.push(context, QrCodePage.route());
            },
          ),
          ProfileTile(
            imageUrl: Assets.information,
            title: "Lucky Draw Information",
            onTap: () {
              Navigator.push(context, LuckDrawInformationPage.route());
            },
          ),
          ProfileTile(
            imageUrl: Assets.help2,
            title: "Help",
            onTap: () {
              Navigator.push(context, HelpsPage.route());
            },
          ),
          ProfileTile(
            imageUrl: Assets.logout,
            title: "Logout",
            isShowDivider: false,
          ),
        ],
      ),
    );
  }
}
