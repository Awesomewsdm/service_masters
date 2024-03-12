// import "package:firebase_auth/firebase_auth.dart";
// import "package:freezed_annotation/freezed_annotation.dart";

// part "auth_user_model.freezed.dart";

// typedef UserId = String;
// typedef Email = String;

// @freezed
// class AuthUserModel with _$AuthUserModel {
//   factory AuthUserModel({
//     required UserId id,
//     required Email email,
//     required bool isEmailVerified,
//   }) = _AuthUserModel;

//   factory AuthUserModel.fromFirebase(User user) => AuthUserModel(
//         email: user.email!,
//         id: user.uid,
//         isEmailVerified: user.emailVerified,
//       );
// }
