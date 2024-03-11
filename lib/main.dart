import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:service_masters/firebase_options.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  final authenticationRepository = getIt<AuthenticationRepository>();
  await authenticationRepository.customer.first;
  runApp(
    App(authenticationRepository: authenticationRepository),
  );
}
