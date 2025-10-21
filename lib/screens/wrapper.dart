import 'package:firebase_auth_app/models/UserModel.dart';
import 'package:firebase_auth_app/screens/authentication/authenticate.dart';
import 'package:firebase_auth_app/screens/home/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // the user data that the provider provides this can be a user data or can be null
    // store provider data into a variable
    final user = Provider.of<UserModel?>(context);

    // decide where to navigate the user after checking user data
    if (user == null || user.uid.isEmpty) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
