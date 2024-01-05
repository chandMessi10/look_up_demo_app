import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:look_up_demo_app/core/exceptions/firebase_auth_exceptions.dart';
import 'package:look_up_demo_app/features/auth/domain/entities/sign_up_user.dart';

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
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        _insertRegisteredUserInDb(name, email, value.user!.uid);
        return value;
      });
      User? user = result.user;
      return right(user);
    } on FirebaseAuthException catch (e) {
      return left(handleFirebaseAuthException(e));
    }
  }

  Future<void> _insertRegisteredUserInDb(
    String name,
    String email,
    String userId,
  ) async {
    final db = FirebaseFirestore.instance;

    SignUpUser signUpUser = SignUpUser(
      email: email,
      id: userId,
      joined: DateTime.now().toString(),
      name: name,
      role: 'user',
    );

    await db.collection('users').doc().set(signUpUser.toJson()).then(
          (value) => log("user saved successfully!"),
          onError: (e) => log("Error saving user: $e"),
        );
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
