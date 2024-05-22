import "package:service_masters/common/barrels.dart";

class TimestampConverter implements JsonConverter<Timestamp, int> {
  const TimestampConverter();

  @override
  Timestamp fromJson(int json) => Timestamp.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(Timestamp object) => object.millisecondsSinceEpoch;
}
