import "package:service_masters/common/barrels.dart";

class ShowErrorSnackBar {
  static void showCustomSnackBar({
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
