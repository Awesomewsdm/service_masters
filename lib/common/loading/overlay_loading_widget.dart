import "package:service_masters/common/barrels.dart";

// class LoadingOverlay extends StatelessWidget {
//   LoadingOverlay({required this.child, super.key})
//       : _isLoadingNotifier = ValueNotifier(false);

//   final ValueNotifier<bool> _isLoadingNotifier;
//   final Widget child;

//   static LoadingOverlay of(BuildContext context) {
//     return context.findAncestorWidgetOfExactType<LoadingOverlay>()!;
//   }

//   void show() {
//     _isLoadingNotifier.value = true;
//   }

//   void hide() {
//     _isLoadingNotifier.value = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: _isLoadingNotifier,
//       child: child,
//       builder: (context, isLoading, child) {
//         return Stack(
//           children: [
//             child!,
//             if (isLoading)
//               const Opacity(
//                 opacity: 0.8,
//                 child: ModalBarrier(dismissible: false, color: Colors.black),
//               ),
//             if (isLoading)
//               const Center(
//                 child: WaveDots(size: 50, color: tPrimaryColor),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }

void showLoadingDialog(BuildContext context) {
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
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 20),
            Text(
              "Loading...",
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      );
    },
  );
}
