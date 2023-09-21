import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service_app/src/app/colors.dart';
import 'package:home_service_app/src/screens/service_provider_details_screen.dart';
import 'package:line_icons/line_icons.dart';

class ServiceProviderCardWidget extends StatelessWidget {
  const ServiceProviderCardWidget({
    super.key,
    required this.image,
    required this.rating,
    required this.totalJobs,
    required this.rate,
    required this.providerName,
    required this.providerExpertise,
  });
  final String image;
  final String rating;
  final String totalJobs;
  final String rate;
  final String providerName;
  final String providerExpertise;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ServiceProviderDetailsScreen(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: tPrimaryColor),
            // boxShadow: [
            //   BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10),
            // ],
            borderRadius: BorderRadius.circular(10),
          ),
          height: 170,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(image,
                    fit: BoxFit.cover, width: 140, height: double.maxFinite),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                providerName,
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                providerExpertise,
                                style: GoogleFonts.poppins(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            LineIcons.bookmark,
                            size: 35,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingInfoWidget(
                            rating: rating,
                          ),
                          TotalJobsInfo(
                            totalJobs: totalJobs,
                          ),
                          RateInfoWidget(
                            rate: rate,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RatingInfoWidget extends StatelessWidget {
  const RatingInfoWidget({
    super.key,
    required this.rating,
  });
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Rating"),
          Row(
            children: [
              const Icon(
                LineIcons.star,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(rating),
            ],
          ),
        ],
      ),
    );
  }
}

class RateInfoWidget extends StatelessWidget {
  const RateInfoWidget({
    super.key,
    required this.rate,
  });
  final String rate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const Text("Rate"), Text("$rate/hr")],
      ),
    );
  }
}

class TotalJobsInfo extends StatelessWidget {
  const TotalJobsInfo({
    super.key,
    required this.totalJobs,
  });
  final String totalJobs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Total Jobs"),
          Text(totalJobs),
        ],
      ),
    );
  }
}
