import 'package:flutter/material.dart';
import 'package:home_service_app/src/screens/book_service_screen.dart';
import 'package:home_service_app/src/utils/exports.dart';

class ServiceProviderDetailsScreen extends StatefulWidget {
  const ServiceProviderDetailsScreen({super.key});

  @override
  State<ServiceProviderDetailsScreen> createState() =>
      _ServiceProviderDetailsScreenState();
}

class _ServiceProviderDetailsScreenState
    extends State<ServiceProviderDetailsScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
  }

//----------

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height / 3,
            width: double.infinity,
            child: Image.asset(
              tPic,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "About",
            style: textTheme.titleLarge,
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Sed euismod, nisi quis aliquet aliquam, "
              "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
              "Sed euismod, nisi quis aliquet aliquam, "
              "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
              "Sed euismod, nisi quis aliquet aliquam, "
              "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
              "Sed euismod, nisi quis aliquet aliquam, "
              "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
              "Sed euismod, nisi quis aliquet aliquam, "
              "Sed euismod, nisi quis aliquet aliquam, "
              "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl.",
              style: textTheme.bodySmall),
          Text(
            "Reviews",
            style: textTheme.titleLarge,
          ),
          Text(
            "Gallery",
            style: textTheme.titleLarge,
          ),
          const Spacer(),
          const PrimaryButton(label: "label")
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
            PrimaryTextWidget(
                text: "Chat", fontWeight: FontWeight.w500, fontSize: 20)
          ],
        ),
      ),
    );
  }
}
//  SliverAppBar(
//             pinned: true,
//             expandedHeight: 250.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: const Text("Malina Airline", ),
//               background: Image.asset(
//                 tLaundry,
//                 fit: BoxFit.fill,
//               ),
//             ),
//             // bottom: Container(
//             //    decoration: const BoxDecoration(
//             //         color: Colors.amber,
//             //         borderRadius: BorderRadius.only(
//             //           topLeft: Radius.circular(20),
//             //           topRight: Radius.circular(20),
//             //         ),
//             //       ),
//             // ),
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               decoration: const BoxDecoration(
//                 color: Colors.amber,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   const Text("Hello"),
//                   const Spacer(),
//                   PrimaryButton(
//                     label: 'Book service',
//                     onPressed: () {},
//                   )
//                 ],
//               ),
//             ),
//           )
// const CustomScrollView(
//         slivers: <Widget>[],
//       ),
