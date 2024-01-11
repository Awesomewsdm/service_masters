import "package:service_masters/common/barrels.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    super.key,
    this.verticalContentPadding = 8.0,
    this.expand = false,
    this.readOnly = false,
    this.onTap,
    this.controller,
    this.suffixIcon,
    this.fillColor = Colors.white,
  });
  final String hintText;
  final double verticalContentPadding;
  final bool expand;
  final bool readOnly;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      maxLines: null,
      expands: expand,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: context.textTheme.bodyLarge!.copyWith(
          color: const Color.fromARGB(255, 132, 133, 137),
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: tPrimaryColor, width: 0.5),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
