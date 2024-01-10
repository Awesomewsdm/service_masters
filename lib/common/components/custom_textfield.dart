import "package:service_masters/common/barrels.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    super.key,
    this.verticalContentPadding = 8.0,
    this.expand = false,
    this.readOnly = false,
    this.onTap,
  });
  final String hintText;
  final double verticalContentPadding;
  final bool expand;
  final bool readOnly;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      readOnly: readOnly,
      maxLines: null,
      expands: expand,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.textTheme.bodyLarge!.copyWith(
          color: const Color.fromARGB(255, 132, 133, 137),
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: tPrimaryColor),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding,
          horizontal: 16.0,
        ),
      ),
    );
  }
}
