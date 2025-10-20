import 'package:firebase_auth_app/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // reference for the AuthService class
  final AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: ElevatedButton(
        onPressed: () async {
          dynamic result = await _auth.signInAnonylously();

          if (result == Null) {
            print("Error in Sign in ANony");
          } else {
            print("Sign in Anonymously");
            print(result.uid);
          }
        },
        child: Text("Sign in Anonymously"),
      ),
    );
  }
}
