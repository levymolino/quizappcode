import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/pages/homepage.dart';
import 'package:quizapp/pages/sign_in.dart';
import 'package:quizapp/services/auth_service.dart';

import 'models/user_model.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? const SignIn() : const Apphomepage();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
