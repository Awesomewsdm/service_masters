import "package:service_masters/common/barrels.dart";

enum ServiceTimeValidationError { invalid }

class ServiceTime extends FormzInput<String, ServiceTimeValidationError> {
  const ServiceTime.pure({this.time = ""}) : super.pure("");

  const ServiceTime.dirty({required this.time, String value = ""})
      : super.dirty(value);

  final String time;

  @override
  ServiceTimeValidationError? validator(String? value) {
    return time == value ? null : ServiceTimeValidationError.invalid;
  }
}

class ServiceTimeConverter implements JsonConverter<ServiceTime, String?> {
  const ServiceTimeConverter();

  @override
  ServiceTime fromJson(String? json) {
    return ServiceTime.dirty(time: json ?? "");
  }

  @override
  String toJson(ServiceTime object) {
    return object.value;
  }
}
