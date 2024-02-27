import "package:service_masters/common/barrels.dart";

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bannerItems = [
      Image.asset(
        tLaundry,
        fit: BoxFit.cover,
      ),
      Image.asset(
        tACRepair,
        fit: BoxFit.cover,
      ),
      Image.asset(
        tTeachingServices,
        fit: BoxFit.cover,
      ),
    ];

    final controller = usePageController();
    final currentPage = useState(0);

    useEffect(
      () {
        context.read<HomeBloc>().add(const HomeEvent.loaded());

        void updatePage(Timer timer) {
          final newPage = (currentPage.value + 1) % bannerItems.length;
          controller.animateToPage(
            newPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          currentPage.value = newPage;
        }

        final timer = Timer.periodic(const Duration(seconds: 3), updatePage);

        return timer.cancel; // Cleanup function
      },
      [],
    );

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeScreenStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == HomeScreenStatus.failure) {
          return const ErrorScreen(
            errorMessage: "An error occurred",
          );
        }
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: context.theme.scaffoldBackgroundColor,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GreetingService.getGreeting(),
                  style: context.textTheme.bodySmall,
                ),
                Text(
                  state.customerName.toString(),
                  style: context.textTheme.bodyLarge,
                ),
              ],
            ),
            actions: [
              GestureDetector(
                onTap: () => context.router.push(const NotificationRoute()),
                child: const IconWithRoundBg(
                  icon: CustomIcons.bell,
                  iconSize: 24,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CustomSearchBar(
                        onTap: () {
                          context.router.push(const SearchRoute());
                        },
                      ),
                    ),
                    const Gap(10),
                    const Expanded(
                      child: CategoryIcon(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            SizedBox(
                              width: context.screenWidth,
                              height: 200,
                              child: PageView(
                                controller: controller,
                                children: bannerItems,
                              ),
                            ),
                            const Gap(20),
                            AnimatedSmoothIndicator(
                              activeIndex: currentPage.value,
                              count: 3,
                              effect: const WormEffect(dotHeight: 5.0),
                            ),
                          ],
                        ),
                      ),
                      CategoryWidget(
                        heading: "Categories",
                        onPressed: () {
                          // context.router.push(const AllCategories()),

                          for (final category in state.categories) {
                            logger.d(category.categoryName);
                          }
                        },
                        categoryList: [
                          for (final category in state.categories)
                            CategoryCardWidget(
                              label: category.categoryName,
                              iconData: CustomIcons.activity,
                            ),
                        ],
                      ),
                      for (final category in state.categories)
                        CategoryWidget(
                          onPressed: () {
                            // context.router.push(
                            //   // ServiceProvidersRoute(
                            //   //   category: category,
                            //   // ),
                            // );
                            for (final service in category.services) {
                              logger.d(
                                service["image_url"].toString(),
                              );
                            }
                          },
                          heading: category.categoryName,
                          categoryList: [
                            for (final service in category.services)
                              ServiceCard(
                                image: service["image_url"].toString(),
                                serviceName: service["service_name"].toString(),
                                onPressed: () {
                                  // context.router.push(
                                  //   // ServiceProvidersRoute(
                                  //   //   s: service["id"].toString(),
                                  //   // ),
                                  // );
                                },
                              ),
                          ],
                        ),
                      CategoryWidget(
                        onPressed: () {},
                        heading: "Artisans",
                        categoryList: const [
                          ProviderCardWidget(
                            image: tLaundry,
                          ),
                          ProviderCardWidget(
                            image: tCleaningServices,
                          ),
                          ProviderCardWidget(
                            image: tACRepair,
                          ),
                          ProviderCardWidget(
                            image: tTeachingServices,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
