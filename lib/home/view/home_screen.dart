import "package:service_masters/common/barrels.dart";

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static Page<void> page() => const MaterialPage<void>(child: HomeScreen());

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
    final authenticationRepository = getIt<AuthenticationRepository>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        switch (state.status) {
          case HomeScreenStatus.loading:
            return const CircularProgressIndicator();
          case HomeScreenStatus.loaded:
            final categories = state.categories;
            final serviceProviders = state.serviceProviders;
            final services = state.services;
            return Text(
              "Welcome ${state.customerName}",
              style: Theme.of(context).textTheme.bodyLarge,
            );
          case HomeScreenStatus.failure:
            return const Text("Failed to load data");
          default:
            return Container();
        }
      },
    );
  }
}
