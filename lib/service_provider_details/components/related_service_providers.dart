import "package:service_masters/common/barrels.dart";

class RelatedServiceProviders extends StatelessWidget {
  const RelatedServiceProviders({
    super.key,
    required this.allRelatedServiceProviders,
    required this.widget,
  });

  final Iterable<ServiceProvider> allRelatedServiceProviders;
  final ServiceProviderDetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: allRelatedServiceProviders.isEmpty
          ? const Center(
              child: Text("No related service providers found"),
            )
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: allRelatedServiceProviders.length < 5
                  ? allRelatedServiceProviders.length
                  : 5,
              itemBuilder: (context, index) {
                final serviceProvider =
                    allRelatedServiceProviders.toList()[index];

                return ProviderCardWidget(
                  serviceProviderLocation: serviceProvider.location,
                  serviceProviderName:
                      "${serviceProvider.firstName} ${serviceProvider.lastName}",
                  serviceProviderPicture: serviceProvider.profilePhoto ?? "",
                  serviceProviderProfession: serviceProvider.profession ?? "",
                  serviceProviderRating: Utils.calculateAverageRating(
                    widget.serviceProviderReviews,
                  ),
                );
              },
            ),
    );
  }
}
