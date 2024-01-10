import "package:service_masters/common/barrels.dart";

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.keyboardType,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    super.key,
    this.autofillHints,
    this.errorText,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
  });
  final Iterable<String>? autofillHints;
  final TextInputType keyboardType;
  final String hintText;
  final String? errorText;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final String labelText;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        autofillHints: autofillHints,
        validator: validator,
        obscureText: obscureText,
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8.0),
          prefixIcon: prefixIcon,
          labelText: labelText,
          suffixIcon: suffixIcon,
          hintText: hintText,
          focusColor: Colors.white,
          hintStyle: context.textTheme.bodyLarge!.copyWith(
            color: const Color.fromARGB(255, 132, 133, 137),
            fontWeight: FontWeight.w300,
          ),
          errorText: errorText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(
                0xFFE5E5E5,
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
