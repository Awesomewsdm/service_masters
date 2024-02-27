import "package:service_masters/common/barrels.dart";

@RoutePage()
class ServiceProvidersScreen extends HookWidget {
  const ServiceProvidersScreen(
    this.serviceDescription, {
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
                                  serviceDescription,
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
                  [],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
