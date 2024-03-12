import "package:service_masters/common/barrels.dart";

@RoutePage()
class FavoriteServicesScreen extends StatelessWidget {
  const FavoriteServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Providers"),
        centerTitle: true,
      ),
      body: BlocBuilder<FavoriteServicesCubit, List<Service>>(
        builder: (context, state) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.6,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: state.length,
            itemBuilder: (BuildContext ctx, int index) {
              final service = state[index];
              return ServiceCard(
                image: service.imageUrl,
                serviceName: service.serviceName,
                onPressed: () {
                  // context.router.push(
                  //   ServiceProvidersRoute(
                  //     serviceId: service["id"].toString(),
                  //     serviceDescription:
                  //         service["description"].toString(),
                  //   ),
                  // );
                },
                service: service,
              );
            },
          );
        },
      ),
    );
  }
}
