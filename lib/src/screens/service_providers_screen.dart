import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/components/service_provider_card_widget.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Service Providers"),
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
                providerExpertise: "Expert Home Plumber"),
            ServiceProviderCardWidget(
                image: tPic,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Plumber"),
            ServiceProviderCardWidget(
                image: tPic,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Plumber"),
            ServiceProviderCardWidget(
                image: tPic,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Plumber"),
            ServiceProviderCardWidget(
                image: tPic,
                rating: "4.3",
                totalJobs: "130",
                rate: "50",
                providerName: 'James Stave',
                providerExpertise: "Expert Home Plumber"),
          ],
        ),
      ),
    );
  }
}
