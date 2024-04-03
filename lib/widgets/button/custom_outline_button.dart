import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';

class custom_outlined_button extends StatefulWidget {
  final Function onPressed;
  final String text;
  final Color? color;

  const custom_outlined_button({super.key,required this.onPressed,required this.text,this.color});

  @override
  State<custom_outlined_button> createState() => _custom_outlined_buttonState();
}

class _custom_outlined_buttonState extends State<custom_outlined_button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height:  50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // padding: const EdgeInsets.all(14),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          side:    BorderSide(
            color: widget.color?? AppColors.whiteColor
          ),
        ),
        onPressed: () {   widget.onPressed(); },
        child: Text(widget.text,style:App_style().textWhite_IR),
      ),
    );
  }
}
