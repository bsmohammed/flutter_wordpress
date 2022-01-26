import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MuswiqFirebaseUser {
  MuswiqFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MuswiqFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MuswiqFirebaseUser> muswiqFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MuswiqFirebaseUser>((user) => currentUser = MuswiqFirebaseUser(user));
