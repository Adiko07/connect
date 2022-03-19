import 'package:flutter/material.dart';
import 'package:connect/login.dart';
import 'package:connect/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Connect Africa';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Welcome(),
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'A',
                style: TextStyle(
                    color: Colors.redAccent,
                    backgroundColor: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Hello Stacy',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )),
          Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.all(1),
              child: ListView(
                children: [
                  Image.asset(
                    'assets/images/bg1.png',
                    width: 500.0,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Login();
                      }),
                    );
                  },
                  child: const Text("Se connecter"),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Register();
                      }),
                    );
                  },
                  child: const Text("S'inscrire"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
