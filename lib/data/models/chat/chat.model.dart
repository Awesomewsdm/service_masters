import "package:service_masters/common/barrels.dart";

part "chat.model.freezed.dart";
part "chat.model.g.dart";

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String id,
    required String senderId,
    required String receiverId,
    required String message,
    required DateTime timestamp,
    required ChatType type,
    required ChatStatus status,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
