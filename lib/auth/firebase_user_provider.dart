import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IngenieriaFirebaseUser {
  IngenieriaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

IngenieriaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IngenieriaFirebaseUser> ingenieriaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<IngenieriaFirebaseUser>(
            (user) => currentUser = IngenieriaFirebaseUser(user));
