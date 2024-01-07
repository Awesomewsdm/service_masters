import "package:home_service_app/common/barrels.dart";

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    required this.image,
    required this.label,
    super.key,
    this.backgroundColor,
    this.width = 30,
    this.onPressed,
  });
  final String image;
  final String label;
  final Color? backgroundColor;
  final double width;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(5.0),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        icon: Image(image: AssetImage(image), width: width),
        label: Text(
          label,
          style: const TextStyle(color: tPrimaryColor),
        ),
      ),
    );
  }
}
