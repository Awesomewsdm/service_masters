import "dart:async";
import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:google_sign_in/google_sign_in.dart";
import "package:meta/meta.dart";
import "package:service_masters/app/bloc/bloc_observer.dart";
import "package:service_masters/data/cache/cache.dart";
import "package:service_masters/data/exceptions/sign_in_with_email_failure.dart";
import "package:service_masters/data/exceptions/sign_in_with_google_failure.dart";
import "package:service_masters/data/exceptions/sign_up_with_email_failure.dart";
import "package:service_masters/data/models/customer/customer.dart";

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

  /// User cache key.
  /// Should only be used for testing purposes.
  @visibleForTesting
  static const userCacheKey = "__user_cache_key__";

  /// Stream of [Customer] which will emit the current user when

  /// Emits [Customer.empty] if the user is not authenticated.
  Stream<Customer> get customer {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final customer =
          firebaseUser == null ? Customer.empty : firebaseUser.toUser;
      _cache.write(key: userCacheKey, value: customer);
      return customer;
    });
  }

  /// Defaults to [Customer.empty] if there is no cached user.
  Customer get currentCustomer {
    return _cache.read<Customer>(key: userCacheKey) ?? Customer.empty;
  }

  /// Creates a new user with the provided [email] and [password].
  ///
  /// Throws a [SignUpWithEmailAndPasswordFailure] if an exception occurs.
  Future<void> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

  /// Throws a [SignInWithGoogleFailure] if an exception occurs.
  Future<void> logInWithGoogle() async {
    try {
      late final firebase_auth.AuthCredential credential;

      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);
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

  /// Throws a [SignInWithEmailAndPasswordFailure] if an exception occurs.
  Future<void> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignInWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignInWithEmailAndPasswordFailure();
    }
  }

  /// Signs out the current user which will emit
  /// [Customer.empty] from the [customer] Stream.
  ///
  /// Throws a [LogOutFailure] if an exception occurs.
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (_) {
      throw LogOutFailure();
    }
  }

  /// Sends a password reset email to the given [email].
  /// Throws a [PasswordResetFailure] if an exception occurs.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  // Future<void> sendPasswordResetEmail({required String email}) async {
  //   try {
  //     await _firebaseAuth.sendPasswordResetEmail(email: email);
  //   } on firebase_auth.FirebaseAuthException catch (e) {
  //     throw PasswordResetFailure.fromCode(e.code);
  //   } catch (_) {
  //     throw const PasswordResetFailure();
  //   }
  // }

  // /// Sends a password reset email to the given [email].
  // /// Throws a [PasswordResetFailure] if an exception occurs.
  // /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  // /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  // Future<void> sendEmailVerification({required String email}) async {
  //   try {
  //     await _firebaseAuth.sendPasswordResetEmail(email: email);
  //   } on firebase_auth.FirebaseAuthException catch (e) {
  //     throw PasswordResetFailure.fromCode(e.code);
  //   } catch (_) {
  //     throw const PasswordResetFailure();
  //   }
  // }

  /// Sends a otpto the given [phone number].
  /// Throws a [PasswordResetFailure] if an exception occurs.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/sendPasswordResetEmail.html
  // Future<void> sendOtp({required String phoneNumber}) async {
  //   try {
  //     await _firebaseAuth.sendPasswordResetEmail(email: email);
  //   } on firebase_auth.FirebaseAuthException catch (e) {
  //     throw PasswordResetFailure.fromCode(e.code);
  //   } catch (_) {
  //     throw const PasswordResetFailure();
  //   }
  // }
}

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
