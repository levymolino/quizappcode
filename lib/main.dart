import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/pages/sign_in.dart';
import 'package:quizapp/pages/sign_up.dart';
import 'package:quizapp/services/auth_service.dart';
import 'package:quizapp/wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        Provider<AuthService>(create: (_) => AuthService())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Wrapper(),
          '/Login': (context) => const SignIn(),
          '/register': (context) => const SignUp(),
        },
      ),
    );
  }
}
