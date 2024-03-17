import "package:service_masters/common/barrels.dart";

@RoutePage()
class ServiceProvidersScreen extends HookWidget {
  const ServiceProvidersScreen({
    required this.serviceDescription,
    required this.serviceId,
    super.key,
  });

  final String serviceId;
  final String serviceDescription;

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
        return RefreshIndicator(
          onRefresh: () => Future.delayed(
            const Duration(seconds: 1),
            () {
              context.read<ServiceProviderBloc>().add(
                    ServiceProviderEvent.fetch(serviceId),
                  );
            },
          ),
          child: Scaffold(
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
                                    style:
                                        context.textTheme.bodyLarge!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    serviceDescription,
                                    style:
                                        context.textTheme.bodySmall!.copyWith(
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
                switch (state.status) {
                  ServiceProviderStatus.initial => const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ServiceProviderStatus.loading => const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ServiceProviderStatus.success => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final serviceProvider = state.serviceProviders[index];
                          return ServiceProviderCardWidget(
                            onTap: () {
                              final relatedServiceProviders =
                                  state.serviceProviders;
                              context.router.push(
                                ServiceProviderDetailsRoute(
                                  serviceProvider: serviceProvider,
                                  relatedServiceProviders:
                                      relatedServiceProviders,
                                ),
                              );
                            },
                            providerName:
                                "${serviceProvider.firstName} ${serviceProvider.lastName}",
                            providerExpertise: serviceProvider.profession ?? "",
                            rating: serviceProvider.rating.toString(),
                            totalJobs: "12",
                            rate: "12",
                            image: serviceProvider.profilePhoto ?? "",
                          );
                        },
                        childCount: state.serviceProviders.length,
                      ),
                    ),
                  ServiceProviderStatus.failure => SliverFillRemaining(
                      child: StatusWidget(
                        message: state.failureMessage ?? "An error occurred",
                        image: tErrorImage,
                        onTap: () {
                          logger.d(state.failureMessage);
                        },
                        subtitle: "",
                      ),
                    ),
                  ServiceProviderStatus.empty => const SliverFillRemaining(
                      child: StatusWidget(
                        message: "No service providers available",
                        image: tNoData,
                        subtitle:
                            "Please check back later, or Pull down to refresh",
                      ),
                    ),
                },
              ],
            ),
          ),
        );
      },
    );
  }
}
