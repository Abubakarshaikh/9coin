import 'package:flutter/material.dart';
import 'package:ninecoin/colors/colors.dart';

class RoundedCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String pNumber;
  final String location;

  const RoundedCard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.pNumber,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          width: 180,
          height: 220,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: CoinColors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6.0),
                  topRight: Radius.circular(6.0),
                ),
                child: Image.asset(imageUrl, fit: BoxFit.contain),
              ),
              const SizedBox(height: 4.0),
              Text(title),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(height: 8.0),
                  Text(pNumber),
                ],
              ),
              const SizedBox(height: 4.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(height: 4.0),
                  Flexible(
                    child: Text(location),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
            ],
          ),
        ),
      ],
    );
  }
}
