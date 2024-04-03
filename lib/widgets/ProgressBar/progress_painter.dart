
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';

///Foreground progress bar painter
///Requires [value] to set progress
///Optional [gradient] or [color] for bar infill
class ProgressPainter extends CustomPainter {
  const ProgressPainter({required this.value,this.showtext, this.gradient, this.color});

  ///current progress bar value
  final double value;

  ///progress bar gradient infill
  final Gradient? gradient;

  final double? showtext;

  ///progress bar gradient color
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    if (gradient != null) {
      paint.shader = gradient?.createShader(Offset.zero & size);
    }
    if (color != null) {
      paint.color = color!;
    }


    final Paint innerCirclePaint = Paint()
      ..strokeWidth =  size.width
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = AppColors.lightgrey;


    canvas.clipRRect(RRect.fromRectAndRadius(
        Offset.zero & size, Radius.circular(size.height / 2)));
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromLTRB(0, 0, size.width * value, size.height),
            Radius.circular(size.height / 4) ),
        paint);
    Offset center = Offset(size.width * value/1, size.height/ 2);
    canvas.drawCircle(
       center, 7.5, innerCirclePaint);

    TextSpan span =  TextSpan(style: App_style().textWhite_s12_IR, text: showtext?.round().toString());
    TextPainter tp = TextPainter(text: span, textAlign: TextAlign.left, textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.width * value/2.3, 0));
  }

  @override
  bool shouldRepaint(covariant ProgressPainter oldDelegate) {
    return value != oldDelegate.value;
  }
}