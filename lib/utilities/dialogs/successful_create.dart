import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import 'generic_dialog.dart';

Future<bool> showSuccessfulCreateAccountDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    imageUrl: Assets.updated,
    title: "Create Successful!",
    content: "Lorem Ipsum is simply dummy text of the printing and types.",
    optionsBuilder: () => {
      "Back": false,
    },
  ).then(
    (value) => value ?? false,
  );
}
