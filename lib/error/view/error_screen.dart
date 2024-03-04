import "package:flutter_svg/flutter_svg.dart";
import "package:service_masters/common/barrels.dart";

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.errorMessage, super.key, this.onTap});
  final String errorMessage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(
              tErrorImage,
              height: 200,
              width: 200,
            ),
          ),
          Center(
            child: Text(errorMessage),
          ),
        ],
      ),
    );
  }
}
