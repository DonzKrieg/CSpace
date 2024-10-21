import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageURL;
  final String title;
  final String subtitle;

  const OnboardingItem(
      {super.key,
      required this.imageURL,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 99,
        ),
        Image.asset(
          imageURL,
          width: double.infinity,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
