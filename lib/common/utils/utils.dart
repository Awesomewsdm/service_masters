import "dart:ui";
import "package:intl/intl.dart";
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

  static void showCustomBottomsheet(
      {required BuildContext context, required Widget widget}) {
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

  static void showLoadingDialog({
    required BuildContext context,
    String? message,
  }) {
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

  static String formatDateTime(DateTime dateTime) {
    /// Format a DateTime object as a string
    return DateFormat("yyyy-MM-dd – kk:mm").format(dateTime);
  }

  static bool isNumeric(String str) {
    /// Check if a string is numeric
    return double.tryParse(str) != null;
  }

  static String capitalize(String str) {
    /// Capitalize the first letter of a string
    if (str.isEmpty) {
      return str;
    } else {
      return str[0].toUpperCase() + str.substring(1);
    }
  }

  static String breakStringIntoLines(String input) {
    final words = input.split(" ");
    if (words.length == 2) {
      return words.join("\n");
    } else {
      return input;
    }
  }

  static String calculateAverageRating(
    List<ServiceProviderReview> serviceProviderReviews,
  ) {
    if (serviceProviderReviews.isEmpty) {
      return "0.0";
    }

    final total =
        serviceProviderReviews.map((e) => e.rating).reduce((a, b) => a + b);

    return (total / serviceProviderReviews.length).toStringAsFixed(1);
  }

  static Future<void> showAlertDialog({
    required BuildContext context,
    required String info,
    required Widget icon,
    Color iconColor = Colors.red,
  }) async {
    await showModal<void>(
      configuration: const FadeScaleTransitionConfiguration(
        transitionDuration: Duration(milliseconds: 500),
        barrierColor: Colors.black26,
        barrierDismissible: false,
        reverseTransitionDuration: Duration(milliseconds: 300),
      ),
      filter: ImageFilter.blur(
        sigmaX: 8,
        sigmaY: 8,
        tileMode: TileMode.repeated,
      ),
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: icon,
          content: Text(info),
          contentTextStyle: context.textTheme.bodyLarge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        );
      },
    );
  }

  static Future<void> showAlertDialogWithCustomActions({
    required BuildContext context,
    required String title,
    required String content,
    required IconData icon,
    required String button1Label,
    required String button2Label,
    void Function()? onPressedCallback1,
    void Function()? onPressedCallback2,
    Color iconColor = Colors.black,
  }) async {
    await showModal<void>(
      configuration: const FadeScaleTransitionConfiguration(
        transitionDuration: Duration(milliseconds: 500),
        barrierColor: Colors.black26,
        barrierDismissible: false,
        reverseTransitionDuration: Duration(milliseconds: 300),
      ),
      filter: ImageFilter.blur(
        sigmaX: 8,
        sigmaY: 8,
        tileMode: TileMode.repeated,
      ),
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 50,
                ),
              ),
              const Gap(10),
              Text(
                title,
                style: context.textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          content: Text(
            content,
            style: context.textTheme.titleSmall!.copyWith(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: PrimaryButton(
                    onPressed: onPressedCallback1,
                    label: button1Label,
                    labelColor: context.theme.primaryColor,
                    backgroundColor: const Color(0xFFFFFFFF),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: PrimaryButton(
                    onPressed: onPressedCallback2,
                    labelColor: context.theme.scaffoldBackgroundColor,
                    label: button2Label,
                    backgroundColor: context.theme.primaryColor,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
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
