import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class ServiceProviderDetailsScreen extends StatefulWidget {
  const ServiceProviderDetailsScreen({super.key});

  @override
  State<ServiceProviderDetailsScreen> createState() =>
      _ServiceProviderDetailsScreenState();
}

class _ServiceProviderDetailsScreenState
    extends State<ServiceProviderDetailsScreen> {
  late ScrollController _scrollController;
  var _textColor;
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.blue;
        });
      });
  }

//----------
  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Goa', textScaleFactor: 1),
              background: Image.asset(
                tPic,
                fit: BoxFit.fill,
              ),
            ),
          ),
          //3
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          )
        ],
      ),
    );
  }
}

// Column(
//         children: [
//           Stack(children: [Image.asset(tLaundry)]),
//           Positioned(
//             bottom: 20,
//             child: AnimatedSmoothIndicator(
//               activeIndex: controller.currentPage,
//               count: 3,
//               effect: const WormEffect(dotHeight: 5.0),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 const Text('Hello World'),
//                 PrimaryButton(
//                   label: tBookNow,
//                   onTap: () {},
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
//       floatingActionButton: FloatingActionButton.extended(
//         elevation: 0,
//         extendedPadding: const EdgeInsets.all(8),
//         backgroundColor: tPrimaryColor,
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const BookServiceScreen()));
//         },
//         label: const Row(
//           children: [
//             ProfileImageWidget(
//               height: 45,
//               width: 50,
//               imageString: tPic,
//             ),
//             SizedBox(
//               width: 2,
//             ),
//             PrimaryTextWidget(
//                 text: "Chat", fontWeight: FontWeight.w500, fontSize: 20)
//           ],
//         ),
//       ),
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