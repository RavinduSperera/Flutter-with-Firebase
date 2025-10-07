import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/models/UserModel.dart';

// handle all the authenticaton related things
class AuthServices {
  // instance for firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create a user from firebase user with UID
  UserModel? _userWithFirebaseUserId(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // create the stream for check auth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUserId);
  }

  // sign in anonymously
  Future signInAnonylously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user =
          result.user; // storing as a firebase user - coud be null too (User?)
      return _userWithFirebaseUserId(user);
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
