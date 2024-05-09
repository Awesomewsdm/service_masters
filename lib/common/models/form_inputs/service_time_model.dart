import "package:service_masters/common/barrels.dart";

enum ServiceTimeValidationError { invalid }

class ServiceTime extends FormzInput<String, ServiceTimeValidationError> {
  const ServiceTime.pure() : super.pure("");

  const ServiceTime.dirty([super.value = ""]) : super.dirty();

  @override
  ServiceTimeValidationError? validator(String? value) {
    if (value!.isEmpty) {
      return ServiceTimeValidationError.invalid;
    }
    return null;
  }
}

class ServiceTimeConverter implements JsonConverter<ServiceTime, String?> {
  const ServiceTimeConverter();

  @override
  ServiceTime fromJson(String? json) {
    return ServiceTime.dirty(json ?? "");
  }

  @override
  String toJson(ServiceTime object) {
    return object.value;
  }
}
