import "package:service_masters/common/barrels.dart";

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(UserInitial());
  final UserRepository userRepository;
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is FetchUsers) {
      yield* _mapFetchUsersToState();
    } else if (event is UpdateUser) {
      yield* _mapUpdateUserToState(event.user);
    }
  }

  Stream<UserState> _mapFetchUsersToState() async* {
    yield UserLoading();
    try {
      final users = await userRepository.getAllUsers();
      yield UsersLoaded(users);
    } catch (e) {
      yield const UserError(message: "Failed to fetch users");
    }
  }

  Stream<UserState> _mapUpdateUserToState(UsersModel user) async* {
    yield UserLoading();
    try {
      await userRepository.updateUser(user);
      yield UserUpdated(user);
    } catch (e) {
      yield const UserError(message: "Failed to update user");
    }
  }
}
