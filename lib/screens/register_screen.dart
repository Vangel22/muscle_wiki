import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class RegisterUserScreen extends StatefulWidget {
  RegisterUserScreen({Key? key}) : super(key: key);

  static const brandBlue = 0XFF20409a;
  static const descriptionText =
      "* Write down credentials to register to MuscleWiki";

  @override
  State<RegisterUserScreen> createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {
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
                          color: Color(RegisterUserScreen.brandBlue),
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
                          color: Color(RegisterUserScreen.brandBlue),
                          fontWeight: FontWeight.w500,
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Text(
                  RegisterUserScreen.descriptionText,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Container(
                  height: 60,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
            ],
          )),
    );
  }
}
