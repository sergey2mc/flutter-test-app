import 'package:flutter/material.dart';

import '../../shared/components/header.component.dart';
import '../../shared/components/nav.component.dart';

class AuthPage extends StatelessWidget {
  final Function(String email, String password) onLogIn;

  const AuthPage({
    Key? key,
    required this.onLogIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('Auth'),
      drawer: nav(context),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        color: Colors.red[600],
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 10
              ),
              child: const Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                )
              )
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10
              ),
              child: const Text(
                'Log In Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 255, 1),
                  fontWeight: FontWeight.normal,
                  fontSize: 18
                )
              )
            ),

          ]
        ),
      )
    );
  }
}
