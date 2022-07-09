import 'package:flutter/material.dart';
import 'package:globo_fitness/screens/register_screen.dart';
import 'package:logger/logger.dart';

class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  static const brandBlue = 0XFF20409a;
  static const descriptionText =
      "* Send your email to recieve a token for reseting your password";

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                          color: Color(ForgotPasswordScreen.brandBlue),
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
                          color: Color(ForgotPasswordScreen.brandBlue),
                          fontWeight: FontWeight.w500,
                          fontSize: 40),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: Text(
                  ForgotPasswordScreen.descriptionText,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Send request',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  )),
            ],
          )),
    );
  }
}
