import 'package:flutter/material.dart';
import 'package:onboarding_screen_ui/constants/constants.dart';

// ignore: must_be_immutable
class DotIndicator extends StatefulWidget {
  DotIndicator({Key? key, this.isActive = false}) : super(key: key);
  bool isActive;

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.isActive ? 12 : 4,
      height: 4,
      decoration: BoxDecoration(
        color: primaryPageColor2,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
