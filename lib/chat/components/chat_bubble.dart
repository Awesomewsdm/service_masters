import "package:service_masters/chat/components/chat_bubble_custom_painter.dart";
import "package:service_masters/common/barrels.dart";

// typedef  ChatBubbleBuilder = Widget Function(BuildContext context, Chat chat, int index);
class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.text,
    required this.timeSent,
    required this.status,
    super.key,
    this.isSender = true,
    this.constraints,
    this.color = Colors.white70,
    this.tail = true,
  });
  final bool isSender;
  final String text;
  final bool tail;
  final Color color;
  final MessageStatus status;
  final BoxConstraints? constraints;
  final String timeSent;

  ///chat bubble builder method
  @override
  Widget build(BuildContext context) {
    var stateTick = false;
    Icon? stateIcon;

    if (MessageStatus.sent == status) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (MessageStatus.delivered == status) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF97AD8E),
      );
    }
    if (MessageStatus.seen == status) {
      stateTick = true;
      stateIcon = const Icon(
        Icons.done_all,
        size: 18,
        color: Color(0xFF92DEDA),
      );
    }

    if (MessageStatus.sending == status) {
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
                    style: context.textTheme.titleSmall,
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
