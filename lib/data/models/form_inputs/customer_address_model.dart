import "package:service_masters/common/barrels.dart";

enum CustomerAddressValidationError {
  empty("Address cannot be empty");

  const CustomerAddressValidationError(this.message);
  final String message;
}

class CustomerAddress
    extends FormzInput<String, CustomerAddressValidationError> {
  const CustomerAddress.pure() : super.pure("");
  const CustomerAddress.dirty([super.value = ""]) : super.dirty();

  @override
  CustomerAddressValidationError? validator(String? value) {
    if (value!.isEmpty) {
      return CustomerAddressValidationError.empty;
    }
    return null;
  }
}

class CustomerAddressConverter
    implements JsonConverter<CustomerAddress, String?> {
  const CustomerAddressConverter();

  @override
  CustomerAddress fromJson(String? json) {
    return CustomerAddress.dirty(json ?? "");
  }

  @override
  String toJson(CustomerAddress object) {
    return object.value;
  }
}
