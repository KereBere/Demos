import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth {
  final FirebaseAuth auth;

  Auth(this.auth);

  Stream<User>? get user => auth.authStateChanges();
}
