import 'package:firebase_auth/firebase_auth.dart';

// handle all the authenticaton related things
class AuthServices {
  // instance for firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anonymously
  Future signInAnonylously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user =
          result.user; // storing as a firebase user - coud be null too (User?)
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  // register using email and password
  // sign in using email and password
  // sign in using gmail
  // sign out
}
