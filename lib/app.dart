import "package:home_service_app/common/barrels.dart";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider(
          create: (_) => NavigationBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, bool>(
        builder: (context, isDark) {
          return MaterialApp.router(
            routeInformationProvider: AppRoutes.router.routeInformationProvider,
            routeInformationParser: AppRoutes.router.routeInformationParser,
            routerDelegate: AppRoutes.router.routerDelegate,
            theme: AppThemeData.lightThemeData,
            darkTheme: AppThemeData.darkThemeData,
          );
        },
      ),
    );
  }
}
