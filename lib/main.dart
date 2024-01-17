import "package:service_masters/app/view/app.dart";
import "package:service_masters/common/barrels.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  runApp(
    App(authenticationRepository: authenticationRepository),
  );
// 0265542141
}
