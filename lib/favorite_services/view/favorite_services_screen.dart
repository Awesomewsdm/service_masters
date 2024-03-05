import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/favorite_services_cubit/favorite_services_cubit.dart";

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
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
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
