import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:home_service_app/src/screens/service_providers_screen.dart';
import 'package:line_icons/line_icons.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ServiceProviders(),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
              height: 200,
              width: 150,
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    height: 200,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        LineIcons.heart,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 150,
                          height: 40,
                          decoration: const BoxDecoration(),
                          child: const Center(
                            child: Text(
                              "Home Cleaning",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
