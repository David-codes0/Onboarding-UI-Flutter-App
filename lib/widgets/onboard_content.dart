import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
        ),
        const Spacer(),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w500,
              ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
