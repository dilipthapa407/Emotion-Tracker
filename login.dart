



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/AuthenticationService.dart';
import 'package:flutter_app_4/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();

  final AuthenticationServices _auth = AuthenticationServices();

  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Form(
            key: _key,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/Ntulogo.png'),
                    ),
                  ),
                  Text(
                    'Emotion Tracker',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        TextFormField(
                          controller: _emailContoller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email cannot be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.black)),
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password cannot be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black)),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 30),
                            ElevatedButton(
                              child: Text('Login'),
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  signInUser();
                                }
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        ElevatedButton(
                          child: Text('Not registered? Sign up'),
                          onPressed: () {
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => RegistrationScreen(),
                              ),
                            );
                          },
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signInUser() async {
    dynamic authResult =
        await _auth.loginUser(_emailContoller.text, _passwordController.text);
    if (authResult == null) {
      Fluttertoast.showToast(
        msg: "Sign in error. could not be able to login",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    } else {
      _emailContoller.clear();
      _passwordController.clear();
      Fluttertoast.showToast(
        msg: "Signed in Successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomeScreen()));
    }
  }
}
