import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/exports.dart';

class ServiceProviders extends StatefulWidget {
  const ServiceProviders({super.key});

  @override
  State<ServiceProviders> createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProviders> {
  late ScrollController _scrollController;
//----------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          // _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.blue;
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
    final size = context.screenSize;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            stretch: true,
            title: _isSliverAppBarExpanded ? null : const Text('App Bar Title'),
            expandedHeight: size.width / 3,
            flexibleSpace: _isSliverAppBarExpanded
                ? null
                : FlexibleSpaceBar(
                    title: Text(
                      "Service H",
                      style: textTheme.bodyLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),

                    titlePadding: const EdgeInsetsDirectional.only(
                        start: 16.0, bottom: 16.0),
                    centerTitle: false,
                    // background: Center(
                    //   child: Text(
                    //     "Service Providers",
                    //     style: textTheme.bodyLarge!.copyWith(
                    //         color: Colors.white, fontWeight: FontWeight.bold),
                    //   ),
                    // ),
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
