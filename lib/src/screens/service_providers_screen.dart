import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: tBlackColor,
        ),
        elevation: 0,
        title: const Text(
          "Service Providers",
          style: TextStyle(color: tBlackColor),
        ),
        backgroundColor: tWhiteColor,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ServiceProviderCardWidget(
                image: tPic,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Teacher"),
            ServiceProviderCardWidget(
                image: tACRepair,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'Malina Airline',
                providerExpertise: "Expert Nurse"),
            ServiceProviderCardWidget(
                image: tHandymanPng,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert AC Repair"),
            ServiceProviderCardWidget(
                image: tCleaningServices,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Plumber"),
            ServiceProviderCardWidget(
                image: tLaundry,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Electrician"),
          ],
        ),
      ),
    );
  }
}
