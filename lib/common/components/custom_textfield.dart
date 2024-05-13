import "package:flutter/services.dart";
import "package:service_masters/common/barrels.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    super.key,
    this.verticalContentPadding = 8.0,
    this.maxlines,
    this.expand = false,
    this.readOnly = false,
    this.maxLength,
    this.errorText,
    this.onTap,
    this.controller,
    this.suffixIcon,
    this.fillColor = Colors.white,
    this.onChanged,
  });

  final String hintText;
  final double verticalContentPadding;
  final bool expand;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Color fillColor;
  final String? errorText;
  final void Function(String)? onChanged;
  final int? maxlines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      maxLines: maxlines,
      expands: expand,
      onChanged: onChanged,
      maxLength: maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: InputDecoration(
        fillColor: fillColor,
        suffixIcon: suffixIcon,
        hintText: hintText,
        errorText: errorText,
        hintStyle: context.textTheme.bodyLarge!.copyWith(
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(width: 0.5),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
