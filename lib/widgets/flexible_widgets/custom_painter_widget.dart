import 'package:flutter/material.dart';
import 'package:hotel_test_app/attributes/utils/extensions/extensions.dart';

import '../../attributes/themes/app_colors.dart';

class LineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      size: Size(context.width, 1), // Adjust the width of the line as needed
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.greyLightMax.withOpacity(0.15)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;
    final startPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
