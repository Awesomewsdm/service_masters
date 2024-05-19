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
          create: (_) => _authenticationRepository,
        ),
        RepositoryProvider<CustomerRepositoryImpl>(
          create: (_) => CustomerRepositoryImpl(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => VerifyUserCubit(),
          ),
          BlocProvider(
            create: (_) => ChatBloc(),
          ),
          BlocProvider(
            create: (_) => EditProfileBloc(),
          ),
          BlocProvider(
            create: (_) => ImagePickerBloc(),
          ),
          BlocProvider(
            create: (_) => HomeBloc(),
          ),
          BlocProvider(
            create: (_) => ImagePickerBloc(),
          ),
          BlocProvider(
            create: (_) => BookServiceProviderBloc(),
          ),
          BlocProvider(
            create: (_) => ServiceProviderBloc(),
          ),
          BlocProvider(
            create: (_) => ScrollCubit(),
          ),
          BlocProvider(
            create: (_) => FilterServiceProvidersCubit(),
          ),
          BlocProvider(
            create: (_) => PriceRangeCubit(),
          ),
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider<UserNameBloc>(
            create: (_) => UserNameBloc(),
          ),
          BlocProvider(
            create: (_) => SignUpBloc(),
          ),
          BlocProvider(
            create: (_) => SignInBloc(),
          ),
          BlocProvider(
            create: (_) => ProfileBloc(),
          ),
          BlocProvider(
            create: (_) => FavoriteServicesCubit(),
          ),
          BlocProvider(
            create: (_) =>
                AppBloc(authenticationRepository: _authenticationRepository),
          ),
          BlocProvider(
            create: (_) => PersonalDetailsBloc(),
          ),
          BlocProvider(
            create: (_) => InternetConnectivityBloc(
              connectivity: Connectivity(),
            ),
          ),
          BlocProvider<DateTimeCubit>(
            create: (_) => DateTimeCubit(),
          ),
          BlocProvider(
            create: (_) => LocationBloc(),
          ),
        ],
        child:
            BlocListener<InternetConnectivityBloc, InternetConnectivityState>(
          listener: (context, state) {
            if (state.isConnected) {
              return Utils.showCustomErrorSnackBar(
                context: context,
                content: "No internet connection",
              );
            }
          },
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
      ),
    );
  }
}
