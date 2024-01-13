
// class ShowCustomBottomSheet {
//   static  voidshowCustomBottomsheet(
//                                   context,
//                                   DraggableScrollableSheet(
//                                     initialChildSize: 0.35,
//                                     minChildSize: 0.2,
//                                     maxChildSize: 0.8,
//                                     expand: false,
//                                     builder: (
//                                       BuildContext context,
//                                       ScrollController scrollController,
//                                     ) {
//                                       return Container(
//                                         height: context.screenHeight / 3,
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(24),
//                                           color: Colors.white,
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(10.0),
//                                           child: Column(
//                                             children: [
//                                               SizedBox(
//                                                 width: context.screenWidth / 10,
//                                                 child: const Divider(
//                                                   thickness: 5,
//                                                 ),
//                                               ),
//                                               const Gap(10),
//                                               SecondaryButtonWithIcon(
//                                                 onPressed: () {
//                                                   context.router
//                                                       .push(EnterEmailRoute());
//                                                 },
//                                                 label: "Email Verification",
//                                                 icon: tCamera2,
//                                                 backgroundColor:
//                                                     MaterialStateProperty.all<
//                                                         Color>(
//                                                   tPrimaryColor,
//                                                 ),
//                                               ),
//                                               SecondaryButtonWithIcon(
//                                                 onPressed: () {
//                                                   context.router
//                                                       .push(EnterPhoneRoute());
//                                                 },
//                                                 label: "Phone Verification",
//                                                 icon: tGalleryImport,
//                                                 backgroundColor:
//                                                     MaterialStateProperty.all<
//                                                         Color>(
//                                                   tPrimaryColor,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 );
// }
