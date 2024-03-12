import "package:formz/formz.dart";

class Code extends FormzInput<String, String> {
  const Code.pure() : super.pure("");
  const Code.dirty([super.value = ""]) : super.dirty();

  @override
  String? validator(String? value) {
    return value?.length == 6 ? null : "Code must be 6 digits";
  }
}
