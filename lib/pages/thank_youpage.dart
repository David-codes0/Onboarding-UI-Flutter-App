import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding_screen_ui/constants/constants.dart';

class LottieAni extends StatefulWidget {
  const LottieAni({Key? key}) : super(key: key);

  @override
  State<LottieAni> createState() => _LottieAniState();
}

class _LottieAniState extends State<LottieAni> {
  late Widget lottie;
  @override
  void initState() {
    lottie = Lottie.asset(
      "assets/images/thank-you.json",
      height: 500,
      width: 400,
      fit: BoxFit.fill
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryAppColor,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: lottie,
      ),
    );
  }
}
