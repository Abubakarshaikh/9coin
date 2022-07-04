import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';
import 'package:ninecoin/colors/colors.dart';
import 'package:ninecoin/features/profile/components/profile_circular_picture.dart';
import 'package:ninecoin/features/profile/components/profile_tile.dart';
import 'package:ninecoin/features/profile/ui/helps_page.dart';
import 'package:ninecoin/features/profile/ui/profile_details_page.dart';
import 'package:ninecoin/features/profile/ui/qr_code_page.dart';
import 'package:ninecoin/typography/text_styles.dart';
import 'package:ninecoin/utilities/dialogs/logout_account.dart';
import 'package:ninecoin/utilities/dialogs/logout_successful.dart';
import 'package:ninecoin/utilities/dialogs/new_password_reset.dart';
import 'package:ninecoin/utilities/dialogs/password_reset.dart';
import 'package:ninecoin/widgets/lucky_draw_information_page.dart';

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
        title: Text("Profile", style: CoinTextStyle.title1Bold),
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
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ID:5630918957",
                          style: CoinTextStyle.title4
                              .copyWith(color: CoinColors.orange)),
                      Text("Tan Qing Fong", style: CoinTextStyle.title1Bold),
                      const Text("qingfong@gmail.com"),
                      const SizedBox(height: 6),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text("326",
                              style: CoinTextStyle.title1Bold.copyWith(
                                  color: Colors.orange, fontSize: 22)),
                          const SizedBox(width: 2),
                          Text("Point", style: CoinTextStyle.title5)
                        ],
                      )
                    ],
                  ),
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
            onTap: () async {
              if (await showResetPasswordDialog(context)) {
                if (await showNewPasswordResetDialog(context)) {}
              }
            },
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
            onTap: () async {
              if (await showLogoutAccountDialog(context)) {
                if (await showSuccessfulLogoutDialog(context)) {}
              }
            },
          ),
        ],
      ),
    );
  }
}
