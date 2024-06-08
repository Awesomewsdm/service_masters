import "dart:math";
import "package:service_masters/common/barrels.dart";

class CircleProgress extends CustomPainter {
  CircleProgress(this.currentProgress);
  double currentProgress;

  @override
  void paint(Canvas canvas, Size size) {
    final greyPaint = Paint()
      ..strokeWidth = 6
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke;

    final completePaint = Paint()
      ..strokeWidth = 6
      ..color = tPrimaryColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, greyPaint);
    final angle = 2 * pi * (currentProgress / 5);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      -angle,
      false,
      completePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
