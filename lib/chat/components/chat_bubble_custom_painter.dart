import "package:service_masters/common/barrels.dart";

class ChatBubbleCustomPainter extends CustomPainter {
  ChatBubbleCustomPainter({
    required this.color,
    required this.alignment,
    required this.tail,
  });
  final Color color;
  final Alignment alignment;
  final bool tail;

  final double _radius = 10.0;
  final double _x = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (alignment == Alignment.topRight) {
      if (tail) {
        canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            0,
            0,
            size.width - _x,
            size.height,
            bottomLeft: Radius.circular(_radius),
            bottomRight: Radius.circular(_radius),
            topLeft: Radius.circular(_radius),
          ),
          Paint()
            ..color = color
            ..style = PaintingStyle.fill,
        );
        final path = Path()
          ..moveTo(size.width - _x, 0)
          ..lineTo(size.width - _x, 10)
          ..lineTo(size.width, 0);
        canvas
          ..clipPath(path)
          ..drawRRect(
            RRect.fromLTRBAndCorners(
              size.width - _x,
              0.0,
              size.width,
              size.height,
              topRight: const Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill,
          );
      } else {
        canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            0,
            0,
            size.width - _x,
            size.height,
            bottomLeft: Radius.circular(_radius),
            bottomRight: Radius.circular(_radius),
            topLeft: Radius.circular(_radius),
            topRight: Radius.circular(_radius),
          ),
          Paint()
            ..color = color
            ..style = PaintingStyle.fill,
        );
      }
    } else {
      if (tail) {
        canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            _x,
            0,
            size.width,
            size.height,
            bottomRight: Radius.circular(_radius),
            topRight: Radius.circular(_radius),
            bottomLeft: Radius.circular(_radius),
          ),
          Paint()
            ..color = color
            ..style = PaintingStyle.fill,
        );
        final path = Path()
          ..moveTo(_x, 0)
          ..lineTo(_x, 10)
          ..lineTo(0, 0);
        canvas
          ..clipPath(path)
          ..drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0.0,
              _x,
              size.height,
              topLeft: const Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill,
          );
      } else {
        canvas.drawRRect(
          RRect.fromLTRBAndCorners(
            _x,
            0,
            size.width,
            size.height,
            bottomRight: Radius.circular(_radius),
            topRight: Radius.circular(_radius),
            bottomLeft: Radius.circular(_radius),
            topLeft: Radius.circular(_radius),
          ),
          Paint()
            ..color = color
            ..style = PaintingStyle.fill,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
