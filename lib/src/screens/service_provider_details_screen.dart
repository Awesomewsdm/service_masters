import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/components/user_profile/profile_image.dart';
import 'package:home_service_app/src/app/text.dart';
import 'package:home_service_app/src/screens/book_service_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ServiceProviderDetailsScreen extends StatelessWidget {
  ServiceProviderDetailsScreen({super.key});
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const PrimaryTextWidget(
          text: "Service Provider",
          fontWeight: FontWeight.w500,
          fontSize: 24.0,
        ),
      ),
      body: Column(
        children: [
          Stack(children: [Image.asset(tLaundry)]),
          Positioned(
            bottom: 20,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(dotHeight: 5.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text('Hello World'),
                PrimaryButton(
                  label: tBookNow,
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        extendedPadding: const EdgeInsets.all(8),
        backgroundColor: tPrimaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const BookServiceScreen()));
        },
        label: const Row(
          children: [
            ProfileImageWidget(
              height: 45,
              width: 50,
              imageString: tPic,
            ),
            SizedBox(
              width: 2,
            ),
            PrimaryTextWidget(
                text: "Chat", fontWeight: FontWeight.w500, fontSize: 20)
          ],
        ),
      ),
    );
  }
}


// Align(
//         alignment: Alignment.bottomCenter,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Container(
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//                 color: tPrimaryColor, borderRadius: BorderRadius.circular(10)),
//             child: const Center(
//               child: Text(
//                 "Book Now",
//                 style: TextStyle(
//                     color: tWhiteColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ),
//       ),