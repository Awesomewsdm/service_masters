// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AutoScrollingBackground extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BackgroundBloc, int>(
//       builder: (context, currentIndex) {
//         return PageView.builder(
//           controller: PageController(initialPage: currentIndex),
//           itemCount: context.read<BackgroundBloc>().imagePaths.length,
//           itemBuilder: (context, index) {
//             return AnimatedBuilder(
//               animation: context.read<BackgroundBloc>()._animationController,
//               builder: (context, child) {
//                 return Image.asset(
//                   context.read<BackgroundBloc>().imagePaths[index],
//                   fit: BoxFit.cover,
//                   alignment:
//                       Alignment(context.read<BackgroundBloc>()._animationController.value, 0),
//                 );
//               },
//             );
//           },
//         );
//       },
//     );
//   }
// }
