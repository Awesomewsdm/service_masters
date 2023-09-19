import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/screens/book_service_screen.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class ServiceProviderDetailsScreen extends StatelessWidget {
  const ServiceProviderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Provider"),
      ),
      body: Column(
        children: [
          Image.asset(tLaundry),
          const Text('Hello World'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton.extended(
            elevation: 0,
            backgroundColor: tPrimaryColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BookServiceScreen()));
            },
            label: const Text(
              "Book Now",
              style: TextStyle(
                  color: tWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
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