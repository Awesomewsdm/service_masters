import "package:service_masters/common/barrels.dart";

enum ServiceDescriptionValidationError { invalid }

class ServiceDescription
    extends FormzInput<String, ServiceDescriptionValidationError> {
  const ServiceDescription.pure({this.description = ""}) : super.pure("");

  const ServiceDescription.dirty({required this.description, String value = ""})
      : super.dirty(value);

  final String description;

  @override
  ServiceDescriptionValidationError? validator(String? value) {
    return description == value
        ? null
        : ServiceDescriptionValidationError.invalid;
  }
}

class ServiceDescriptionConverter
    implements JsonConverter<ServiceDescription, String?> {
  const ServiceDescriptionConverter();

  @override
  ServiceDescription fromJson(String? json) {
    return ServiceDescription.dirty(description: json ?? "");
  }

  @override
  String toJson(ServiceDescription object) {
    return object.value;
  }
}
