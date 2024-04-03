
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';

class chart_container extends StatelessWidget {
  final Widget child;
  final double? height;
  const chart_container({super.key,required this.child,this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
    height: height,
      decoration: BoxDecoration(
        color:  Color(0xff7EF6F0),
        boxShadow: const [
          BoxShadow(
            color: Color(0xff7EF6F0),
            blurRadius:10,
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
          ),
        ],
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.only(bottom: 5,top: 1),
      child: Container(
        decoration:  BoxDecoration(
          color: AppColors.primary_color_bg,
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: child,
      ),
    );
  }
}
