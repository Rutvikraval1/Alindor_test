
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';

class cus_container extends StatelessWidget {
 final Widget child;
 final double? height;
  const cus_container({super.key,required this.child,this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          AppColors.primary_blueColor,
          AppColors.primary_ligthblueColor,
        ]),
        boxShadow: const [
          BoxShadow(
          color: AppColors.whiteColor,
          blurRadius: 8.0,
        ),],
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Container(
          decoration:  BoxDecoration(
            color: AppColors.primary_color_bg,
            border: Border.all(color: const Color(0xff021D5A),),
            borderRadius: BorderRadius.circular(32),
          ),
          child: child,
        ),
      ),
    );
  }
}
