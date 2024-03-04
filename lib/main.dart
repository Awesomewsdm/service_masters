import "package:service_masters/common/barrels.dart";

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
