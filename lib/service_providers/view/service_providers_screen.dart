import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_providers/bloc/service_provider_bloc.dart";
import "package:service_masters/service_providers/cubit/scroll_cubit.dart";
import "package:service_masters/service_providers/cubit/scroll_state.dart";

@RoutePage()
class ServiceProvidersScreen extends HookWidget {
  const ServiceProvidersScreen({required this.serviceId, super.key});

  final String serviceId;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(
      () {
        context.read<ServiceProviderBloc>().add(
              ServiceProviderEvent.fetch(serviceId),
            );
        scrollController.addListener(() {
          context.read<ScrollCubit>().updateScroll(
                context,
                scrollController.offset,
              );
        });
        return scrollController.dispose;
      },
      [],
    );

    return BlocBuilder<ServiceProviderBloc, ServiceProviderState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              BlocBuilder<ScrollCubit, ScrollState>(
                builder: (context, state) {
                  return SliverAppBar(
                    floating: true,
                    pinned: true,
                    stretch: true,
                    title: state is SliverAppBarExpanded
                        ? const Text("Service Providers")
                        : null,
                    expandedHeight: context.screenWidth / 2.5,
                    flexibleSpace: state is SliverAppBarExpanded
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
                                  style: context.textTheme.bodySmall!.copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
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
                  );
                },
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    for (final service in state.serviceProviders)
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
      },
    );
  }
}
