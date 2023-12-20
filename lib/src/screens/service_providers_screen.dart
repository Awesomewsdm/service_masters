import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.screenSize;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            stretch: true,
            expandedHeight: size.width / 3,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   "Service Providers",
              //   style: textTheme.bodyLarge!
              //       .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              // ),
              centerTitle: false,
              background: Center(
                child: Text(
                  "Service Providers",
                  style: textTheme.bodyLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ServiceProviderCardWidget(
                  image: tPic,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: 'James Stave',
                  providerExpertise: "Expert Home Teacher",
                ),
                const ServiceProviderCardWidget(
                  image: tACRepair,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: 'Malina Airline',
                  providerExpertise: "Expert Nurse",
                ),
                const ServiceProviderCardWidget(
                  image: tHandymanPng,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: 'James Stave',
                  providerExpertise: "Expert AC Repair",
                ),
                const ServiceProviderCardWidget(
                  image: tCleaningServices,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: 'James Stave',
                  providerExpertise: "Expert Home Plumber",
                ),
                const ServiceProviderCardWidget(
                  image: tLaundry,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: 'James Stave',
                  providerExpertise: "Expert Electrician",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
