import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


import 'package:globo_fitness/screens/register_screen.dart';
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
                    
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                    },
                  )
              ),
              Row(
                children: <Widget>[
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'Register',
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
              Container(
                  padding: EdgeInsets.all(10),
                  child: Row(children: <Widget>[
                    Expanded(child: Divider()),
                    Text(
                      "OR",
                      style: TextStyle(color: Color(LoginScreen.brandBlue)),
                    ),
                    Expanded(child: Divider()),
                  ])),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      //auth call
                    },
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    text: "Sign up with Facebook",
                    onPressed: () {
                      //auth call
                    },
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
