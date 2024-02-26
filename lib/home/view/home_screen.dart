import "package:service_masters/common/barrels.dart";

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  final PageController controller = PageController();

  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loaded());
    controller.addListener(() {
      setState(() {
        currentPage = controller.page?.round() ?? 0;
      });
    });
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < bannerItems.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
            actions: const [
              IconWithRoundBg(
                icon: CustomIcons.bell,
                iconSize: 24,
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
                              activeIndex: currentPage,
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
                            //   ServiceProvidersRoute(
                            //     category: category,
                            //   ),
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
                                  context.router.push(
                                    const ServiceProvidersRoute(),
                                  );
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
