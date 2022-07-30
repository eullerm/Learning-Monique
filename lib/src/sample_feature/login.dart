import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const routeName = '/login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          background(),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.dark_mode_outlined),
                ButtonTheme(
                  child: Text("Sign in"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

background() {
  return Stack(
    children: <Widget>[
      Container(
        color: Colors.blue,
      ),
      Container(
        margin: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              Colors.blue,
              Colors.lime,
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 24, bottom: 24),
        color: Colors.white.withOpacity(0.4),
      ),
    ],
  );
}
