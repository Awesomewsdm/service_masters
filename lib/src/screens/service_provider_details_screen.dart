import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/app/components/button/primary_button.dart';
import 'package:home_service_app/src/app/components/text/primary_text_widget.dart';
import 'package:home_service_app/src/app/components/user_profile/profile_image.dart';
import 'package:home_service_app/src/screens/book_service_screen.dart';
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
    return Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Malina Airline", textScaleFactor: 1),
              background: Image.asset(
                tLaundry,
                fit: BoxFit.fill,
              ),
            ),
            // bottom: Container(
            //    decoration: const BoxDecoration(
            //         color: Colors.amber,
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(20),
            //           topRight: Radius.circular(20),
            //         ),
            //       ),
            // ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  const Text("Hello"),
                  const Spacer(),
                  PrimaryButton(
                    label: 'Book service',
                    onTap: () {},
                  )
                ],
              ),
            ),
          )
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
