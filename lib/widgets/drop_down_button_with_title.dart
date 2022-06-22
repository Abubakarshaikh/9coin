import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

import '../typography/text_styles.dart';

class DropDownButtonWithTitle extends StatelessWidget {
  const DropDownButtonWithTitle({
    Key? key,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.value,
    required this.title,
  }) : super(key: key);

  final String title;
  final List<Object> items;
  final String hintText;
  final Function(Object?) onChanged;
  final Object? value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0, bottom: 4.0),
            child: Text(title, style: CoinTextStyle.orangeTitle3),
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
                color: CoinColors.black12,
                border: Border.all(color: CoinColors.black12),
                borderRadius: BorderRadius.circular(8.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                dropdownColor: CoinColors.black12,
                borderRadius: BorderRadius.circular(12),
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey[700],
                ),
                hint: Text(
                  hintText,
                  style:
                      CoinTextStyle.title3.copyWith(color: CoinColors.black54),
                ),
                isExpanded: true,
                iconSize: 36,
                value: value,
                underline: const SizedBox(),
                onChanged: onChanged,
                items: List.generate(
                  items.length,
                  (index) {
                    return DropdownMenuItem(
                        value: items[index], child: Text("${items[index]}"));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
