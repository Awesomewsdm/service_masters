import "dart:async";
import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:google_sign_in/google_sign_in.dart";
import "package:meta/meta.dart";
import "package:multiple_result/multiple_result.dart";
import "package:service_masters/app/bloc/bloc_observer.dart";
import "package:service_masters/authentication/exceptions/sign_in_with_email_failure.dart";
import "package:service_masters/authentication/exceptions/sign_in_with_google_failure.dart";
import "package:service_masters/authentication/exceptions/sign_up_with_email_failure.dart";
import "package:service_masters/common/models/customer/customer.dart";
import "package:service_masters/data/cache/cache.dart";

class LogOutFailure implements Exception {}

class AuthenticationRepository {
  AuthenticationRepository({
    CacheClient? cache,
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _cache = cache ?? CacheClient(),
        _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final CacheClient _cache;
  final firebase_auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @visibleForTesting
  static const userCacheKey = "__user_cache_key__";

  Stream<Customer> get customer {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final customer =
          firebaseUser == null ? Customer.empty : firebaseUser.toUser;
      _cache.write(key: userCacheKey, value: customer);
      return customer;
    });
  }

  Customer get currentCustomer {
    return _cache.read<Customer>(key: userCacheKey) ?? Customer.empty;
  }

  Future<Result<void, String>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Result.success(null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Result.error(
        SignUpWithEmailAndPasswordFailure.fromCode(e.code).message,
      );
    } catch (_) {
      return const Result.error(
        "An unknown error has occurred. Please try again",
      );
    }
  }

  Future<Result<void, String>> logInWithGoogle() async {
    try {
      late final firebase_auth.AuthCredential credential;

      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
      return const Result.success(null);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithGoogleFailure.fromCode(e.code);
    } catch (_) {
      throw const SignInWithGoogleFailure();
    }
  }

  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted:
          (firebase_auth.PhoneAuthCredential credential) async {
        await _firebaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (firebase_auth.FirebaseAuthException e) {
        // Handle verification failure
        logger.d("Verification Failed: $e");
      },
      codeSent: (String verificationId, int? resendToken) {
        logger.d("Code Sent: $verificationId");
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto-retrieval timed out
        logger.d("Code Auto-Retrieval Timeout: $verificationId");
      },
      timeout: const Duration(seconds: 60),
    );
  }

  Future<Result<Customer, String>> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final resp = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final customer = resp.user! as Customer;
      return Result.success(customer);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignInWithEmailAndPasswordFailure();
    }
  }

  Future<Result<void, String>> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
      return const Result.success(null);
    } catch (_) {
      return const Result.error(
        "An unknown error has occurred. Please try again",
      );
    }
  }
}

// Future<void> sendPasswordResetEmail({required String email}) async {
//   try {
//     await _firebaseAuth.sendPasswordResetEmail(email: email);
//   } on firebase_auth.FirebaseAuthException catch (e) {
//     throw PasswordResetFailure.fromCode(e.code);
//   } catch (_) {
//     throw const PasswordResetFailure();
//   }
// }

// Future<void> sendEmailVerification({required String email}) async {
//   try {
//     await _firebaseAuth.sendPasswordResetEmail(email: email);
//   } on firebase_auth.FirebaseAuthException catch (e) {
//     throw PasswordResetFailure.fromCode(e.code);
//   } catch (_) {
//     throw const PasswordResetFailure();
//   }
// }

// Future<void> sendOtp({required String phoneNumber}) async {
//   try {
//     await _firebaseAuth.sendPasswordResetEmail(email: email);
//   } on firebase_auth.FirebaseAuthException catch (e) {
//     throw PasswordResetFailure.fromCode(e.code);
//   } catch (_) {
//     throw const PasswordResetFailure();
//   }
// }

extension on firebase_auth.User {
  /// Maps a [firebase_auth.User] into a [Customer].
  Customer get toUser {
    return Customer(
      id: uid,
      email: email,
      firstName: displayName,
      lastName: displayName,
      profilePicture: photoURL,
    );
  }
}
