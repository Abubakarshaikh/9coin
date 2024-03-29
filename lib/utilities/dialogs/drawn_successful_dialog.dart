import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import 'generic_dialog.dart';

Future<bool> showDrawnSuccessfulDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    imageUrl: Assets.updated,
    title: "Drawn Successful!",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit proin et orci in quam.",
    optionsBuilder: () => {
      "Back": false,
    },
  ).then(
    (value) => value ?? false,
  );
}
