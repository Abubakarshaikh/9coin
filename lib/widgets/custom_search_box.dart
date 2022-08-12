import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: CoinColors.black,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 16)
      ],
    );
  }
}
