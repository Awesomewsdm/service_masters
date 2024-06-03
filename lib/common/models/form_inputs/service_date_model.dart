import "package:service_masters/common/barrels.dart";

enum ServiceDateValidationError { empty }

class ServiceDate extends FormzInput<String, ServiceDateValidationError> {
  const ServiceDate.pure() : super.pure("");
  const ServiceDate.dirty([super.value = ""]) : super.dirty();

  @override
  ServiceDateValidationError? validator(String? value) {
    if (value!.isEmpty) {
      return ServiceDateValidationError.empty;
    }
    return null;
  }
}

class ServiceDateConverter implements JsonConverter<ServiceDate, String?> {
  const ServiceDateConverter();

  @override
  ServiceDate fromJson(String? json) {
    return ServiceDate.dirty(json ?? "");
  }

  @override
  String toJson(ServiceDate object) {
    return object.value;
  }
}
