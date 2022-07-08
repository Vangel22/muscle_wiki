import 'package:flutter/material.dart';
import 'package:globo_fitness/screens/register_screen.dart';
import 'package:logger/logger.dart';

import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static const brandBlue = 0XFF20409a;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.fromLTRB(0, 50, 10, 50),
                        width: 150.0,
                        height: 150.0,
                        decoration: new BoxDecoration(
                          color: Color(LoginScreen.brandBlue),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          'Muscle',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                    Text(
                      'Wiki',
                      style: TextStyle(
                          color: Color(LoginScreen.brandBlue),
                          fontWeight: FontWeight.w500,
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Icon(Icons),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.email),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.email),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.email),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen()),
                  );
                },
                child: const Text('Forgot Password',),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                    },
                  )
              ),
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterUserScreen()),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
