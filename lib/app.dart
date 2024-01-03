// import "package:authentication_repository/authentication_repository.dart";
// import "package:home_service_app/common/barrels.dart";

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider<AuthenticationRepository>(
//           create: (context) => AuthenticationRepository(),
//         ),
//         RepositoryProvider<UserRepository>(
//           create: (context) => UserRepository(),
//         ),
//       ],
//       child: MultiBlocProvider(
//         providers: [
//           BlocProvider(
//             create: (_) => ThemeBloc(),
//           ),
//           BlocProvider(
//             create: (_) => ThemeBloc(),
//           ),
//           BlocProvider(
//             create: (_) => NavigationBloc(),
//           ),
//           BlocProvider<AuthenticationBloc>(
//             create: (context) => AuthenticationBloc(
//               authenticationRepository:
//                   context.read<AuthenticationRepository>(),
//               userRepository: _userRepository,
//             ),
//           ),
//           BlocProvider<UserNameBloc>(
//             create: (context) => UserNameBloc(),
//           ),
//           BlocProvider<AuthBloc>(
//             create: (context) => AuthBloc(
//               FirebaseAuthProvider(),
//             ),
//           ),
//           BlocProvider<ImageUploaderBloc>(
//             create: (context) => ImageUploaderBloc(),
//           ),
//           BlocProvider(
//             create: (context) => SignUpBloc(),
//           ),
//           BlocProvider<SignInBloc>(
//             create: (context) => SignInBloc(
//               context.read<AuthenticationRepository>(),
//             ),
//           ),
//         ],
//         child: BlocBuilder<ThemeBloc, bool>(
//           builder: (context, isDark) {
//             return MaterialApp.router(
//               routeInformationProvider:
//                   AppRoutes.router.routeInformationProvider,
//               routeInformationParser: AppRoutes.router.routeInformationParser,
//               routerDelegate: AppRoutes.router.routerDelegate,
//               routerConfig: appRouter.config(
//                 navigatorObservers: () {
//                   return [
//                     // SMAppObserver(),
//                   ];
//                 },
//               ),
//               theme: AppThemeData.lightThemeData,
//               darkTheme: AppThemeData.darkThemeData,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
