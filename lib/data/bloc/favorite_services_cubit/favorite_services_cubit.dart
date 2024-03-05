import "package:service_masters/common/barrels.dart";

class FavoriteServicesCubit extends Cubit<List<Service>> {
  FavoriteServicesCubit() : super([]);

  FutureOr<void> toggleFavorite(Service service) {
    emit([
      ...state.where((i) => i.serviceName != service.serviceName),
      Service(
        serviceName: service.serviceName,
        isFavorite: !service.isFavorite,
        id: service.id,
        imageUrl: service.imageUrl,
        description: service.description,
      ),
    ]);
  }
}
