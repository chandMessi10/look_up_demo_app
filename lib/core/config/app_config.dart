import 'package:firebase_auth/firebase_auth.dart';

class AppConfig {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> isLoggedIn() async {
    try {
      final User? user = _auth.currentUser;
      return user != null;
    } catch (e) {
      return false;
    }
  }
}
