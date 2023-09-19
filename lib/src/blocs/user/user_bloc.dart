import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service_app/src/blocs/models/user_model.dart';
import 'package:home_service_app/src/blocs/user/user_event.dart';
import 'package:home_service_app/src/blocs/user/user_state.dart';
import 'package:home_service_app/src/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  UserBloc({required this.userRepository}) : super(UserInitial());

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
      yield const UserError(message: 'Failed to fetch users');
    }
  }

  Stream<UserState> _mapUpdateUserToState(UserModel user) async* {
    yield UserLoading();
    try {
      await userRepository.updateUser(user);
      yield UserUpdated(user);
    } catch (e) {
      yield const UserError(message: 'Failed to update user');
    }
  }
}
