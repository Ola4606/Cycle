import 'package:avatar_glow/avatar_glow.dart';
import 'package:cycle/pages/datePicker.dart';
import 'package:cycle/pages/loading.dart';
import 'package:cycle/pages/offline.dart';
import 'package:cycle/services/auth.dart';
import 'package:cycle/shared/constants.dart';
// import 'package:cycle/shared/curvedBar.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

 
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';
  dynamic nickName = '';
  bool loading = false;

   

  @override
  Widget build(BuildContext context) {
    
     final AuthService _auth = AuthService(nickNamesofUser: nickName);
    return loading ? Loading(): Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[200],
        title: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
          child: Text(
            'Registration Page',
             textScaleFactor : 1,
             style: TextStyle(
               fontSize: 24
             ),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
              child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 0
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                 AvatarGlow(
                    endRadius: 90,
                    duration: Duration(seconds: 2),
                    glowColor: Colors.pinkAccent[200],
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                        elevation: 8.0,
                        shape: CircleBorder(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          backgroundImage: AssetImage('assets/images/chick.png'),
                          radius: 50.0,
                        )),
                  ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0,  MediaQuery.of(context).size.height * 0.03),
              child: Text(
                   'Please Fill The Forms',
                    textScaleFactor : 1,
                   style: TextStyle(
                      fontFamily: 'Comic',
                      color: Colors.black,
                      fontSize: 23,
              ),
                  ),
                      ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Nickname'),
                        validator: (val) => val.length < 3 || val.length > 10 ?
                         "Can't be less than 3 letters or more than 10" : null,
                        onChanged: (val) {
                          setState(() => nickName = val);
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Email'),
                        validator: (val) => val.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Password'),
                        obscureText: true,
                        validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                       Text(
                        error,
                         textScaleFactor : 1,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                      Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.pinkAccent[200],
                           ),
                        child: RaisedButton(
                          color: Colors.pinkAccent[200],
                          child: Text(
                            'Register',
                             textScaleFactor : 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontFamily: 'Comic'
                              ),
                          ),
                          onPressed: () async {
                            if(_formKey.currentState.validate()){
                                  setState(() {
                                     loading = true;
                                  });
                              dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                              if(result == null) {
                                setState(() {
                                  error = 'Please supply a valid email';
                                });
                                
                                Navigator.push(context, 
                                   MaterialPageRoute(builder: (context) => Offline(error: error,)));
                                   setState(() {
                                     loading = false;
                                  });
                              }
                              else{
                                
                                Navigator.pushReplacement(context, 
                                   MaterialPageRoute(builder: (context) => DatePicker()));
                                   setState(() {
                                     loading = false;
                                  });
                              }
                            }
                          }
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}