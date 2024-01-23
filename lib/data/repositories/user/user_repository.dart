import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/models/user/user.dart";

abstract class UserRepository {
  // factory UserRepository() {
  //   return _instance;
  // }

  // UserRepository._internal();
  // static final UserRepository _instance = UserRepository._internal();

  User? _user;

  void addUser(User user) {
    _user = user;
  }

  User? getUser() {
    return _user;
  }

  void updateUser(User updatedUser) {
    _user = updatedUser;
  }

  void deleteUser() {
    _user = null;
  }
}
