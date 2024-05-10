// import "package:service_masters/common/barrels.dart";

// class FirstImagePickerWidget extends HookWidget {
//   const FirstImagePickerWidget({
//     required this.controller,
//     required this.activePageIndexNotifier,
//     super.key,
//   });
//   final PageController controller;
//   final ValueNotifier<int> activePageIndexNotifier;

//   @override
//   Widget build(BuildContext context) {
//     final status = useState(ImageUploadStatus.initial);
//     return Expanded(
//       child: GestureDetector(
//         onTap: () {
//           showCustomBottomsheet(
//             context,
//             PhotoOrVideoUploadBottomsheet(
//               controller: controller,
//               activePageIndexNotifier: activePageIndexNotifier,
//             ),
//           );
//         },
//         child: Container(
//           height: 100,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: tPrimaryColor.withOpacity(0.5),
//             ),
//             borderRadius: BorderRadius.circular(10),
//             color: backgroundColor1,
//           ),
//           child: switch (status.value) {
//             ImageUploadStatus.initial => AddPhotoOrVideoWidget(
//                 onTapCallback: () {
//                   showCustomBottomsheet(
//                     context,
//                     PhotoOrVideoUploadBottomsheet(
//                       controller: controller,
//                       activePageIndexNotifier: activePageIndexNotifier,
//                     ),
//                   );
//                 },
//               ),
//             ImageUploadStatus.loading => const Center(
//                 child: CircularProgressIndicator(
//                   color: tPrimaryColor,
//                 ),
//               ),
//             ImageUploadStatus.success => ChangePhotoOrVideoWidget(
//                 filePath: context.watch<ImageUploadBloc>().state.firstImagePath,
//               ),
//             ImageUploadStatus.failure => const CustomAlertDialog(),
//           },
//         ),
//       ),
//     );
//   }
// }
