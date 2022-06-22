import 'package:flutter/material.dart';

import '../ui/drawn_details_page.dart';
import 'drawn_tile.dart';

class LuckyDrwanItems extends StatelessWidget {
  const LuckyDrwanItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawnTile(
          onTap: () {
            Navigator.push(context, DrawnDetailsPage.route());
          },
          title: "Imperdiet Ex Noon",
          startingDate: "1/4/2022 ",
          endDate: " 30/4/2022",
        ),
        DrawnTile(
          title: "Proin Et Orci In Quam Porta",
          startingDate: "1/4/2022",
          endDate: "30/4/2022",
          onTap: () {
            Navigator.push(context, DrawnDetailsPage.route());
          },
        ),
        DrawnTile(
          title: "Null At Sapien Scelerisque",
          startingDate: "1/3/2022",
          endDate: "31/3/2022",
          onTap: () {
            Navigator.push(context, DrawnDetailsPage.route());
          },
        ),
        DrawnTile(
          title: "Praesent Pretium Erat Nulla Euismod",
          startingDate: "1/2/2022",
          endDate: " 28/2/2022",
          onTap: () {
            Navigator.push(context, DrawnDetailsPage.route());
          },
        ),
      ],
    );
  }
}
