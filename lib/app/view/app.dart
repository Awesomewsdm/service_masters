import "package:service_masters/common/barrels.dart";

class App extends StatelessWidget {
  App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;
  final _appRouter = AppRouter();
  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
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
            create: (_) => HomeBloc(),
          ),
          BlocProvider(
            create: (_) => ThemeCubit(),
          ),
          BlocProvider<UserNameBloc>(
            create: (context) => UserNameBloc(),
          ),
          BlocProvider<ImageUploaderBloc>(
            create: (context) => ImageUploaderBloc(),
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
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: _appRouter.config(
                navigatorObservers: () {
                  return [
                    AppRouterObserver(),
                  ];
                },
              ),
              title: "Service Masters",
              theme: appThemeData.brightness == Brightness.light
                  ? AppThemeData.lightThemeData
                  : AppThemeData.darkThemeData,
              darkTheme: AppThemeData.darkThemeData,
            );
          },
        ),
      ),
    );
  }
}
