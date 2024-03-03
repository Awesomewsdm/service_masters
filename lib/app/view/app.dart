import "package:service_masters/common/barrels.dart";

class App extends HookWidget {
  App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;
  final _appRouter = AppRouter();
  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    DateTime? lastPressed;

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (context) => _authenticationRepository,
        ),
        RepositoryProvider<CustomerRepositoryImpl>(
          create: (context) => CustomerRepositoryImpl(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => VerifyUserCubit(),
          ),
          BlocProvider(
            create: (context) => EditProfileBloc(),
          ),
          BlocProvider(
            create: (context) => ImageUploadBloc(),
          ),
          BlocProvider(
            create: (_) => HomeBloc(),
          ),
          BlocProvider(
            create: (_) => ServiceProviderBloc(),
          ),
          BlocProvider(
            create: (_) => ScrollCubit(),
          ),
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider<UserNameBloc>(
            create: (context) => UserNameBloc(),
          ),
          BlocProvider(
            create: (context) => SignUpBloc(),
          ),
          BlocProvider(
            create: (context) => SignInBloc(),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(),
          ),
          BlocProvider(
            create: (context) =>
                AppBloc(authenticationRepository: _authenticationRepository),
          ),
          BlocProvider(
            create: (context) => PersonalDetailsBloc(),
          ),
          BlocProvider<DateTimeCubit>(
            create: (context) => DateTimeCubit(),
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (context, appThemeData) {
            return PopScope(
              canPop: false,
              onPopInvoked: (bool didPop) async {
                if (didPop) {
                  return;
                }
                final now = DateTime.now();
                final backButtonHasNotBeenPressedOrSnackbarHasBeenClosed =
                    lastPressed == null ||
                        now.difference(lastPressed!) >
                            const Duration(seconds: 2);

                if (backButtonHasNotBeenPressedOrSnackbarHasBeenClosed) {
                  lastPressed = now;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Double tap to exit app"),
                      duration: Duration(seconds: 2),
                    ),
                  );
                } else {
                  if (didPop) {
                    Navigator.of(context).pop();
                  }
                }
              },
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: _appRouter.config(
                  navigatorObservers: () {
                    return [
                      AppRouterObserver(),
                    ];
                  },
                ),
                title: "Service Masters",
                theme: switch (appThemeData.brightness) {
                  Brightness.light => AppThemeData.lightThemeData,
                  Brightness.dark => AppThemeData.darkThemeData
                },
                darkTheme: AppThemeData.darkThemeData,
              ),
            );
          },
        ),
      ),
    );
  }
}
