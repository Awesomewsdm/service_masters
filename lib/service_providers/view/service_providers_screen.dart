import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_providers/components/filter_service_providers.dart";

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

        void listener() {
          context.read<ScrollCubit>().updateScroll(
                context,
                scrollController.offset,
              );
        }

        scrollController.addListener(listener);

        return () {
          scrollController
            ..removeListener(listener)
            ..dispose();
        };
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
                                    serviceId,
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
                            CustomIcons.filter,
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0, 1),
                                  end: Offset.zero,
                                )
                                    .chain(
                                      CurveTween(curve: Curves.easeOutSine),
                                    )
                                    .animate(
                                      CurvedAnimation(
                                        parent:
                                            ModalRoute.of(context)?.animation ??
                                                const AlwaysStoppedAnimation<
                                                    double>(0),
                                        curve: const Interval(
                                          0.125,
                                          0.250,
                                          curve: Curves.easeOutCubic,
                                        ),
                                      ),
                                    ),
                                child: const FilterServiceProvidersScreen(),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            CustomIcons.search,
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
                                  serviceProviderPortfolio: const [],
                                  serviceProviderReviews: const [],
                                ),
                              );
                            },
                            providerName:
                                "${serviceProvider.firstName} ${serviceProvider.lastName}",
                            providerExpertise: serviceProvider.profession ?? "",
                            rating: "4.5",
                            // serviceProvider.reviews.isNotEmpty
                            //     ? (serviceProvider.reviews
                            //                 .map((e) => e.rating)
                            //                 .reduce((a, b) => a + b) /
                            //             serviceProvider.reviews.length)
                            //         .toString()
                            //     : "0.0",
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
                        subtitle:
                            "Please check back later, or Pull down to refresh",
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
