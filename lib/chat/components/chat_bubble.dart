import "package:service_masters/chat/components/chat_bubble_custom_painter.dart";
import "package:service_masters/common/barrels.dart";

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.text,
    required this.timeSent,
    super.key,
    this.isSender = true,
    this.constraints,
    this.color = Colors.white70,
    this.tail = true,
    this.sent = false,
    this.delivered = false,
    this.seen = false,
    this.sending = false,
    this.textStyle = const TextStyle(
      color: Colors.black87,
      fontSize: 16,
    ),
  });
  final bool isSender;
  final String text;
  final bool tail;
  final Color color;
  final bool sent;
  final bool delivered;
  final bool seen;
  final bool sending;

  final TextStyle textStyle;
  final BoxConstraints? constraints;
  final String timeSent;

  ///chat bubble builder method
  @override
  Widget build(BuildContext context) {
    var stateTick = false;
    Icon? stateIcon;
    if (sent) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (delivered) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (seen) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF92DEDA),
      );
    }

    if (sending) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.access_time_rounded,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }

    return Align(
      alignment: isSender ? Alignment.topRight : Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: CustomPaint(
          painter: ChatBubbleCustomPainter(
            color: color,
            alignment: isSender ? Alignment.topRight : Alignment.topLeft,
            tail: tail,
          ),
          child: Container(
            constraints: constraints ??
                BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * .7,
                ),
            margin: isSender
                ? stateTick
                    ? const EdgeInsets.fromLTRB(7, 7, 14, 7)
                    : const EdgeInsets.fromLTRB(7, 7, 17, 7)
                : const EdgeInsets.fromLTRB(17, 7, 7, 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: stateTick
                      ? const EdgeInsets.only(right: 20)
                      : EdgeInsets.zero,
                  child: Text(
                    text,
                    style: textStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(timeSent),
                    const Gap(8),
                    if (stateIcon != null && stateTick)
                      stateIcon
                    else
                      const SizedBox(
                        width: 1,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
