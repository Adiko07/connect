import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Row(
            children: const <Widget>[
              Expanded(
                  child: const Text(
                'Hello Stacy',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )),
              Expanded(
                  child: const Image(
                image: AssetImage('assets/images/bg1.png'),
              )),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              //controller: nameController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                fillColor: Color(0xFFFF5151),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              //controller: passwordController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                fillColor: Color(0xFFFF5151),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Sign Up'),
                onPressed: () {
                  //print(nameController.text);
                  //print(passwordController.text);
                },
              )),
        ],
      ),
    );
  }
}
