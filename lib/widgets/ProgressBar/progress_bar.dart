
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';
import './backgroud_painter.dart';
import './progress_painter.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.value,
    this.width = 200.0,
    this.height = 10.0,
    this.color,
    this.backgroundColor = Colors.transparent,
    this.gradient,
  })  : assert(
  gradient == null || color == null,
  'Cannot provide both a color and a gradient',
  ),
        assert(
        gradient != null || color != null,
        'Need to provide color or gradient',
        ),
        super(key: key);

  ///progress bar width
  final double width;

  ///progress bar height
  final double height;

  ///current progress value
  final double? value;

  ///progress bar gradient parameter
  final Gradient? gradient;
  ///progress bar color parameter
  final Color? color;

  ///progress bar color parameter
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return  CustomPaint(
      size: Size(width, height),
      foregroundPainter: ProgressPainter(
        value: value!,
        color: color,
        gradient: gradient,
        showtext: value! * 100
      ),
      painter: BackgroundPainter(
        backgroundColor: backgroundColor,
      ),
    );
  }
}