import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:look_up_demo_app/core/exceptions/firebase_auth_exceptions.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Either<String, User?>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      return right(user);
    } on FirebaseAuthException catch (e) {
      return left(handleFirebaseAuthException(e));
    }
  }

  Future<Either<String, User?>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      return right(user);
    } on FirebaseAuthException catch (e) {
      return left(handleFirebaseAuthException(e));
    }
  }

  Future<Either<String, Unit>> signOut() async {
    try {
      await _auth.signOut();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(handleFirebaseAuthException(e));
    }
  }
}
