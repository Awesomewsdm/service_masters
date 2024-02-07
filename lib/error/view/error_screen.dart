import "package:flutter_svg/flutter_svg.dart";
import "package:service_masters/common/barrels.dart";

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.errorMessage, super.key});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            tErrorImage,
            height: 200,
            width: 200,
          ),
          Center(
            child: Text(errorMessage),
          ),
        ],
      ),
    );
  }
}
