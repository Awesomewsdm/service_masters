import "package:get_it/get_it.dart";
import "package:service_masters/app/bloc/app_bloc.dart";
import "package:service_masters/common/barrels.dart";

final getIt = GetIt.instance;

void setupLocator() {
  getIt
    ..registerSingleton<AppBloc>(
        AppBloc(authenticationRepository: getIt<AuthenticationRepository>()))
    ..registerSingleton<AuthenticationRepository>(AuthenticationRepository());
}
