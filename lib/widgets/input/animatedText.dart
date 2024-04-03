
import 'package:alindor_test/utils/app_style.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Cus_AnimatedText extends StatelessWidget {
  final String description;
  const Cus_AnimatedText({super.key,required this.description});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
            description,
            textStyle: App_style().textWhite_s15_IR,
            textAlign: TextAlign.center
        ),
      ],
      // totalRepeatCount: 1,
      isRepeatingAnimation: false,
    );
  }
}
