import "package:service_masters/common/barrels.dart";

part "message.freezed.dart";
part "message.g.dart";

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String text,
    required String senderId,
    required String receiverId,
    @TimestampConverter() required Timestamp timestamp,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
