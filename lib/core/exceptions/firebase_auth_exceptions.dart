import 'package:firebase_auth/firebase_auth.dart';

String handleFirebaseAuthException(FirebaseAuthException e) {
  switch (e.code) {
    case "operation-not-allowed":
      return "Operation not allowed";
    case "user-not-found":
      return "User not available";
    case "wrong-password":
      return "Wrong password";
    case "network-request-failed":
      return "Network error";
    case "too-many-requests":
      return "Too many requests error";
    default:
      return "Unknown error";
  }
}
