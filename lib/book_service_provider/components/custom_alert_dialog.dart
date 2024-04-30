import "package:service_masters/common/barrels.dart";

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Error",
            style: context.textTheme.labelSmall,
          ),
          const Gap(20),
          Text(
            " An error occurred while uploading the image. Please try again.",
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
