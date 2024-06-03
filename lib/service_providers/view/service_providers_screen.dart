import "package:service_masters/common/barrels.dart";
import "package:service_masters/service_providers/components/filter_service_providers_widget.dart";
import "package:service_masters/service_providers/components/search_service_providers_widget.dart";

@RoutePage()
class ServiceProvidersScreen extends HookWidget {
  const ServiceProvidersScreen({
    required this.serviceProviderReview,
    required this.serviceDescription,
    required this.serviceId,
    super.key,
  });
  final String serviceId;
  final String serviceDescription;
  final List<ServiceProviderReview> serviceProviderReview;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    var items = <ServiceProvider>[];
    final listKey = GlobalKey<SliverAnimatedListState>();

    useEffect(() {
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

      void insert(
        ServiceProvider serviceProvider,
      ) {
        final index = items.length;
        items = List.from(items)..add(serviceProvider);
        listKey.currentState?.insertItem(index);
      }

      context.read<ServiceProviderBloc>().stream.listen((state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (serviceProviders) {
            for (var i = 0; i < serviceProviders.length; i++) {
              Future.delayed(Duration(milliseconds: 500 * i), () {
                insert(serviceProviders[i]);
              });
            }
          },
          failure: (message) {},
          empty: () {},
        );
      });
      return () {
        scrollController.removeListener(listener);
      };
    });

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
                      actions: const [
                        FilterServiceProvidersWidget(),
                        SearchServiceProvidersWidget(),
                      ],
                    );
                  },
                ),
                state.when(
                  initial: () => const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  loading: () => const SliverFillRemaining(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  success: (serviceProviders) => SliverAnimatedList(
                    key: listKey,
                    initialItemCount: items.length,
                    itemBuilder: (
                      BuildContext context,
                      int index,
                      Animation<double> animation,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 2.0,
                          right: 2.0,
                          top: 2.0,
                        ),
                        child: SizeTransition(
                          sizeFactor: animation.drive(
                            CurveTween(curve: Curves.elasticInOut),
                          ),
                          child: ServiceProviderCardWidget(
                            onTap: () {
                              context.router.push(
                                ServiceProviderDetailsRoute(
                                  serviceProvider: items[index],
                                  relatedServiceProviders: items,
                                  serviceProviderPortfolio: const [],
                                  serviceProviderReviews: serviceProviderReview,
                                ),
                              );
                            },
                            providerName:
                                "${items[index].firstName} ${items[index].lastName}",
                            providerExpertise: items[index].profession ?? "",
                            rating: Utils.calculateAverageRating(
                              serviceProviderReview,
                            ),
                            totalJobs: "12",
                            rate: "12",
                            image: items[index].profilePhoto ?? "",
                          ),
                        ),
                      );
                    },
                  ),
                  failure: (message) => SliverFillRemaining(
                    child: StatusWidget(
                      message: message ?? "An error occurred",
                      image: tErrorImage,
                      onTap: () {},
                      subtitle:
                          "Please check back later, or Pull down to refresh",
                    ),
                  ),
                  empty: () => const SliverFillRemaining(
                    child: StatusWidget(
                      message: "No service providers available",
                      image: tNoData,
                      subtitle:
                          "Please check back later, or Pull down to refresh",
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
