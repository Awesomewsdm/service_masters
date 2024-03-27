import "package:service_masters/common/barrels.dart";

class FavoriteServicesCubit extends HydratedCubit<List<Service>> {
  FavoriteServicesCubit() : super([]);

  // FutureOr<void> toggleFavorite(Service service) {
  //   if (service.isFavorite) {

  //   } else {

  //   }
  //   emit([
  //     ...state.where((i) => i.serviceName != service.serviceName),
  //     Service(
  //       serviceName: service.serviceName,
  //       isFavorite: !service.isFavorite,
  //       id: service.id,
  //       imageUrl: service.imageUrl,
  //       description: service.description,
  //     ),
  //   ]);
  // }
  FutureOr<void> toggleFavorite(Service service) {
    emit(state.where((i) => i.serviceName != service.serviceName).toList());
  }
  // void toggleFavorite(Service service) {
  //   final updatedService = service.copyWith(isFavorite: !service.isFavorite);

  //   if (state.contains(service)) {
  //     final updatedList = state.map((s) {
  //       return s == service ? updatedService : s;
  //     }).toList();
  //     emit(updatedList);
  //   } else {
  //     emit([...state, updatedService]);
  //   }
  // }

  @override
  List<Service> fromJson(Map<String, dynamic> json) {
    final services = <Service>[];
    for (final service in json["services"] as List<Map<String, dynamic>>) {
      services.add(
        Service(
          serviceName: service["service_name"] as String,
          isFavorite: service["is_favorite"] as bool,
          id: service["id"] as String,
          imageUrl: service["image_url"] as String,
          description: service["description"] as String,
        ),
      );
    }
    return services;
  }

  @override
  Map<String, dynamic> toJson(List<Service> state) {
    final services = <Map<String, dynamic>>[];
    for (final service in state) {
      services.add(
        {
          "service_name": service.serviceName,
          "is_favorite": service.isFavorite,
          "id": service.id,
          "image_url": service.imageUrl,
          "description": service.description,
        },
      );
    }
    return {"services": services};
  }
}
