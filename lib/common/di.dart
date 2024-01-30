import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:google_sign_in/google_sign_in.dart";
import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/cache/cache.dart";

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
    ..registerLazySingleton<CustomerRepositoryImpl>(CustomerRepositoryImpl.new)
    ..registerLazySingleton<AppBloc>(
      () => AppBloc(
        authenticationRepository: getIt<AuthenticationRepository>(),
      ),
    );
}
