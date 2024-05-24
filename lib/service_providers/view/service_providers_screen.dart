import "package:service_masters/common/barrels.dart";
import "package:service_masters/filter_service_providers/view/filter_service_providers.dart";

@RoutePage()
class ServiceProvidersScreen extends StatefulWidget {
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
  State<ServiceProvidersScreen> createState() => ServiceProvidersScreenState();
}

class ServiceProvidersScreenState extends State<ServiceProvidersScreen> {
  final scrollController = ScrollController();
  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();
  final List<ServiceProvider> _items = [];
  int? _selectedItem;
  late int _nextItem;

  @override
  void initState() {
    super.initState();

    context.read<ServiceProviderBloc>().add(
          ServiceProviderEvent.fetch(widget.serviceId),
        );
    void listener() {
      context.read<ScrollCubit>().updateScroll(
            context,
            scrollController.offset,
          );
    }

    scrollController.addListener(listener);

    _nextItem = 0;
    context.read<ServiceProviderBloc>().stream.listen((state) {
      if (state is ServiceProviderState.success()) {
        for (var i = 0; i < state.serviceProviders.length; i++) {
          Future.delayed(Duration(milliseconds: 500 * i), () {
            _insert(state.serviceProviders[i]);
          });
        }
      }
    });
  }

  void _insert(ServiceProvider serviceProvider) {
    final index = _items.length;
    _items.add(serviceProvider);
    _listKey.currentState?.insertItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceProviderBloc, ServiceProviderState>(
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () => Future.delayed(
            const Duration(seconds: 1),
            () {
              context.read<ServiceProviderBloc>().add(
                    ServiceProviderEvent.fetch(widget.serviceId),
                  );
            },
          ),
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => SliverAnimatedListSample()));
              },
            ),
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
                                    widget.serviceId,
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
                state.when(initial:()=> const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),  loading: () => const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ), // final serviceProvider = state.serviceProviders[index];
  success: (serviceProviders) => SliverAnimatedList(
                      key: _listKey,
                      initialItemCount: _items.length,
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
                            sizeFactor: animation,
                            child: SizedBox(
                              height: 80.0,
                              child: Card(
                                // color: Colors.primaries[item % Colors.primaries.length],
                                child: Center(
                                  child: Text(
                                    "Item ${_items[index].firstName}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      // state.failureMessage ??
                    ),  failure:() =>  SliverFillRemaining(
                      child: StatusWidget(
                        message:  "An error occurred",
                        image: tErrorImage,
                        onTap: () {
                          // logger.d(state.failureMessage);
                        },
                        subtitle:
                            "Please check back later, or Pull down to refresh",
                      ),
                    ), empty: ()=> const SliverFillRemaining(
                      child: StatusWidget(
                        message: "No service providers available",
                        image: tNoData,
                        subtitle:
                            "Please check back later, or Pull down to refresh",
                      ),
                    ),) ,
                 
                 

                  // ServiceProviderCardWidget(
                  //   onTap: () {
                  //     final relatedServiceProviders =
                  //         state.serviceProviders;
                  //     context.router.push(
                  //       ServiceProviderDetailsRoute(
                  //         serviceProvider: serviceProvider,
                  //         relatedServiceProviders:
                  //             relatedServiceProviders,
                  //         serviceProviderPortfolio: const [],
                  //         serviceProviderReviews: serviceProviderReview,
                  //       ),
                  //     );
                  //   },
                  //   providerName:
                  //       "${serviceProvider.firstName} ${serviceProvider.lastName}",
                  //   providerExpertise: serviceProvider.profession ?? "",
                  //   rating: Utils.calculateAverageRating(
                  //     serviceProviderReview,
                  //   ),
                  //   totalJobs: "12",
                  //   rate: "12",
                  //   image: serviceProvider.profilePhoto ?? "",
                  // ),

               
              
            ],),
          ),
        );
      },
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    required this.animation,
    required this.item,
    super.key,
  });

  final Animation<double> animation;
  final int item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        right: 2.0,
        top: 2.0,
      ),
      child: SizeTransition(
        sizeFactor: animation,
        child: SizedBox(
          height: 80.0,
          child: Card(
            color: Colors.primaries[item % Colors.primaries.length],
            child: Center(
              child: Text(
                "Item $item",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
