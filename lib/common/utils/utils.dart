import "package:service_masters/common/barrels.dart";

class Utils {
  static String getGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return "Good Morning";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  String convertToReadableName(String documentName) {
    final words = documentName.split("_");

    final readableName = words.map((word) => word.capitalize()).join(" ");

    return readableName;
  }

  static void showCustomBottomsheet(BuildContext context, Widget widget) {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      context: context,
      builder: (context) => DraggableScrollableSheet(
        minChildSize: 0.2,
        maxChildSize: 0.9,
        expand: false,
        builder: (
          BuildContext context,
          ScrollController scrollController,
        ) {
          return widget;
        },
      ),
    );
  }

  static void showCustomDialog(BuildContext context, {String? message}) {
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

  static String breakStringIntoLines(String input) {
    final words = input.split(" ");
    if (words.length == 2) {
      return words.join("\n");
    } else {
      return input;
    }
  }

  static void showCustomSuccessSnackBar({
    required BuildContext context,
    required String message,
    Color textColor = Colors.black,
    Duration duration = const Duration(seconds: 3),
  }) {
    final textTheme = Theme.of(context).textTheme;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Text(
              message,
              style: textTheme.bodyMedium!.copyWith(color: Colors.black),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ],
        ),
        duration: duration,
        backgroundColor: const Color(0xFFE9F6ED),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color(0xFF25A249),
            width: 2,
          ),
        ),
      ),
    );
  }

  static void showCustomErrorSnackBar({
    required BuildContext context,
    required String content,
    Color textColor = Colors.black,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Text(
              content,
              style:
                  context.textTheme.bodyMedium!.copyWith(color: Colors.black),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              child: const Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ],
        ),
        duration: duration,
        backgroundColor: const Color(0xFFE9F6ED),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color(0xFF25A249),
            width: 2,
          ),
        ),
      ),
    );
  }
}
