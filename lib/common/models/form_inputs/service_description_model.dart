import "package:service_masters/common/barrels.dart";

enum ServiceDescriptionValidationError {
  empty("Service description cannot be empty");

  const ServiceDescriptionValidationError(this.message);
  final String message;
}

class ServiceDescription
    extends FormzInput<String, ServiceDescriptionValidationError> {
  const ServiceDescription.pure() : super.pure("");
  const ServiceDescription.dirty([super.value = ""]) : super.dirty();

  @override
  ServiceDescriptionValidationError? validator(String? value) {
    if (value!.isEmpty) {
      return ServiceDescriptionValidationError.empty;
    }
    return null;
  }
}

class ServiceDescriptionConverter
    implements JsonConverter<ServiceDescription, String?> {
  const ServiceDescriptionConverter();

  @override
  ServiceDescription fromJson(String? json) {
    return ServiceDescription.dirty(json ?? "");
  }

  @override
  String toJson(ServiceDescription object) {
    return object.value;
  }
}
