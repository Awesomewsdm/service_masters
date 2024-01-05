import "package:authentication_repository/authentication_repository.dart";
import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/common/routes/app_router_observer.dart";

class App extends StatelessWidget {
  const App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (context) => AuthenticationRepository(),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                AppBloc(authenticationRepository: AuthenticationRepository()),
          ),
          BlocProvider(
            create: (_) => ThemeBloc(),
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
        ],
        child: BlocBuilder<ThemeBloc, bool>(
          builder: (context, isDark) {
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
              theme: isDark
                  ? AppThemeData.darkThemeData
                  : AppThemeData.lightThemeData,
              darkTheme: AppThemeData.darkThemeData,
            );
          },
        ),
      ),
    );
  }
}
