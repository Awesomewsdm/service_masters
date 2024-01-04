import "package:authentication_repository/authentication_repository.dart";
import "package:flow_builder/flow_builder.dart";
import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:home_service_app/app/routes/routes.dart";
import "package:home_service_app/common/barrels.dart";

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
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

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
            create: (_) => ThemeBloc(),
          ),
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
        ],
        child: BlocBuilder<ThemeBloc, bool>(
          builder: (context, isDark) {
            return MaterialApp(
              home: FlowBuilder<AppStatus>(
                state: context.select((AppBloc bloc) => bloc.state.status),
                onGeneratePages: onGenerateAppViewPages,
              ),
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
