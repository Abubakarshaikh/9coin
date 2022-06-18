import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import 'generic_dialog.dart';

Future<bool> showNewPasswordResetDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    imageUrl: Assets.updated,
    title: "Code has been sent to reset a new password!",
    content: "Lorem Ipsum is simply dummy text of the printing and types.",
    optionsBuilder: () => {
      "Done": false,
    },
  ).then(
    (value) => value ?? false,
  );
}