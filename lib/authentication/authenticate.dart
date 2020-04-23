import 'package:cycle/pages/loginIn.dart';
import 'package:cycle/pages/nickName.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return  Reflectly(toggleView:  toggleView);
    } else {
      return  SignIn(toggleView:  toggleView);
    }
  }
}