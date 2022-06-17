import 'package:flutter/material.dart';
import 'package:ninecoin/assets/assets.dart';

import 'generic_dialog.dart';

Future<bool> showResetPasswordDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    imageUrl: Assets.changePassword,
    title: "Reset Your Password?",
    content: "Lorem Ipsum is simply dummy text of the printing and types.",
    optionsBuilder: () => {
      "Cancel": false,
      "Confirm": true,
    },
  ).then(
    (value) => value ?? false,
  );
}
