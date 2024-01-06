import "package:home_service_app/app/bloc_observer.dart";
import "package:home_service_app/common/barrels.dart";

@RoutePage()
class ServiceProvidersScreen extends StatefulWidget {
  const ServiceProvidersScreen({super.key});

  @override
  State<ServiceProvidersScreen> createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProvidersScreen> {
  late ScrollController _scrollController;

//----------
  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          logger.d(_scrollController.offset);
        });
      });
  }

//----------
  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (context.screenWidth / 2.5 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            stretch: true,
            title: _isSliverAppBarExpanded
                ? const Text("Service Providers")
                : null,
            expandedHeight: context.screenWidth / 2.5,
            flexibleSpace: _isSliverAppBarExpanded
                ? null
                : FlexibleSpaceBar(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Service Providers",
                          style: context.textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Find our best and trusted Electricians, Plumbers, AC Repairers, Home Teachers, Nurses, etc.",
                          style: context.textTheme.bodySmall!
                              .copyWith(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),

                    titlePadding: const EdgeInsetsDirectional.only(
                      start: 16.0,
                      bottom: 16.0,
                    ),
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
              ),
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
                  providerName: "James Stave",
                  providerExpertise: "Expert Home Teacher",
                ),
                const ServiceProviderCardWidget(
                  image: tACRepair,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: "Malina Airline",
                  providerExpertise: "Expert Nurse",
                ),
                const ServiceProviderCardWidget(
                  image: tHandymanPng,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: "James Stave",
                  providerExpertise: "Expert AC Repair",
                ),
                const ServiceProviderCardWidget(
                  image: tCleaningServices,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: "James Stave",
                  providerExpertise: "Expert Home Plumber",
                ),
                const ServiceProviderCardWidget(
                  image: tLaundry,
                  rating: "4.3",
                  totalJobs: "130",
                  rate: "50",
                  providerName: "James Stave",
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
