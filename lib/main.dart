import "package:service_masters/common/barrels.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // setupLocator();
  logger.d("Locator setup");
  final authenticationRepository = AuthenticationRepository();
  logger.d("AuthenticationRepository initialized");
  await authenticationRepository.user.first;
  runApp(
    App(authenticationRepository: authenticationRepository),
  );
// 0265542141
}
