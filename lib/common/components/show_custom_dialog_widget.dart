import "package:service_masters/common/barrels.dart";

void showCustomDialog(BuildContext context, {String? message}) {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const Gap(20),
            Text(
              message ?? "Please wait...",
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      );
    },
  );
}
