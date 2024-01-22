import "package:get_it/get_it.dart";

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<AppBloc>(AppBloc());
  getIt.registerSingleton<SomeOtherDependency>(SomeOtherDependency());
}
