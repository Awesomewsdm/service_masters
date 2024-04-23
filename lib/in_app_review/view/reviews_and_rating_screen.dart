import "dart:math";

import "package:flutter/material.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class ReviewsAndRatingScreen extends StatelessWidget {
  const ReviewsAndRatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews and Ratings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Column(
                  children: [
                    CustomPaint(
                      painter: CircleProgress(
                        4.0,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text(
                            "4.0",
                            style: context.textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      "Based on 10 reviews",
                      style: context.textTheme.titleSmall!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleProgress extends CustomPainter {
  CircleProgress(this.currentProgress);
  double currentProgress;

  @override
  void paint(Canvas canvas, Size size) {
    final greyPaint = Paint()
      ..strokeWidth = 7
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke;

    final completePaint = Paint()
      ..strokeWidth = 7
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
