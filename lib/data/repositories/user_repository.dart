import "package:service_masters/common/barrels.dart";

class UserRepository {
  factory UserRepository() {
    return _instance;
  }

  UserRepository._internal();
  // Singleton instance
  static final UserRepository _instance = UserRepository._internal();

  // List of users
  final List<User> _users = [];

  // Add a user
  void addUser(User user) {
    _users.add(user);
  }

  // Get all users
  List<User> getAllUsers() {
    return _users;
  }

  // Get user by ID
  User? getUserById(int id) {
    return _users.firstWhere((user) => user.id == id.toString(),
        orElse: () => User.empty);
  }

  // Update user
  void updateUser(User updatedUser) {
    final index = _users.indexWhere((user) => user.id == updatedUser.id);
    if (index != -1) {
      _users[index] = updatedUser;
    }
  }

  // Delete user
  void deleteUser(int id) {
    _users.removeWhere((user) => user.id == id.toString());
  }
}
