import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/services/firebase_storage_service.dart";
import "package:service_masters/location/repository/location_repository.dart";

final getIt = GetIt.instance;
void setupLocator() {
  getIt
    ..registerSingleton<CacheClient>(CacheClient())
    ..registerSingleton<firebase_auth.FirebaseAuth>(
      firebase_auth.FirebaseAuth.instance,
    )
    ..registerSingleton<GoogleSignIn>(GoogleSignIn.standard())
    ..registerSingleton<AuthenticationRepository>(
      AuthenticationRepository(
        cache: getIt<CacheClient>(),
        firebaseAuth: getIt<firebase_auth.FirebaseAuth>(),
        googleSignIn: getIt<GoogleSignIn>(),
      ),
    )
    ..registerLazySingleton<HomeScreenDataRepositoryImpl>(
      HomeScreenDataRepositoryImpl.new,
    )
    ..registerLazySingleton<ChatRepositoryImpl>(ChatRepositoryImpl.new)
    ..registerLazySingleton<CustomerRepositoryImpl>(CustomerRepositoryImpl.new)
    ..registerLazySingleton<ServiceProviderRepositoryImpl>(
      ServiceProviderRepositoryImpl.new,
    )
    ..registerLazySingleton<AppBloc>(
      () => AppBloc(
        authenticationRepository: getIt<AuthenticationRepository>(),
      ),
    )
    ..registerLazySingleton<LocationRepository>(LocationRepository.new)
    ..registerLazySingleton<BookServiceProviderRepository>(
      BookServiceProviderRepository.new,
    )
    ..registerLazySingleton<BookingsRepository>(
      BookingsRepository.new,
    )
    ..registerLazySingleton<FirebaseStorageService>(FirebaseStorageService.new)
    ..registerLazySingleton<FirestoreService>(FirestoreService.new);
}
