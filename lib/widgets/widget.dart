import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
            fontSize: 22
        ),
        // ignore: prefer_const_literals_to_create_immutables
        children: <TextSpan>[
          TextSpan(text: 'Quiz', style: TextStyle(fontWeight: FontWeight.w600
              , color: Colors.black54)),
          TextSpan(text: 'tory', style: TextStyle(fontWeight: FontWeight.w600
              , color: Colors.blue)),
        ],
      ),
    );
  }
}
