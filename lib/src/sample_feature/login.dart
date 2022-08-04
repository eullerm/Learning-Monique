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
    double width = MediaQuery.of(context).size.width;
    double margin = 80.0;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          background(),
          Container(
            margin: EdgeInsets.all(margin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon(
                  Icons.dark_mode_outlined,
                  size: 120.0,
                ),
                
                inputs(),

                CheckboxListTile(
                  value: true, 
                  onChanged: (change)=>{print(change)}, 
                  title: Text("Lorem ipsum"), 
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.only(left: 0),
                ),

                buttons(buttonSize: width-margin),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

buttons({buttonSize}) {

  return Column(
    children: [
      ElevatedButton(
        child: const Text("Sign in"),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(buttonSize, 36),
        ),
        onPressed: () => {
          print("click")
        },
      ),
      GestureDetector(
        onTap: () => {print("Cadastre-se")},
        child: Text("Lorem ipsum"),
      ),
      ],
  );
}

inputs() {
  return Column(
    children: [TextField(
                  decoration: new InputDecoration(
                    hintText: 'Username'
                  ),
              ),
              SizedBox(height: 50,),
              TextField(
                  decoration: new InputDecoration(
                    hintText: 'Password'
                  ),
              ),],);
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
