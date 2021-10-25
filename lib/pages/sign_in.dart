import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/pages/sign_up.dart';
import 'package:quizapp/services/auth_service.dart';
import 'package:quizapp/widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF4B39EF),
      appBar: AppBar(
        title: const AppLogo(),
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: Form(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Spacer(),
              TextFormField(
                controller: emailcontroller,
                style: const TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFFFFFFF),
                    fontSize: 15),
                decoration: const InputDecoration(
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: passwordcontroller,
                style: const TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFFFFFFF),
                    fontSize: 15),
                decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap : () {
                  authService.signInWithEmailAndPassword(
                    emailcontroller.text, passwordcontroller.text);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF304FFE),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lexend Deca',
                        fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lexend Deca',
                      fontSize: 12,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontFamily: 'Lexend Deca',
                          fontSize: 12,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
