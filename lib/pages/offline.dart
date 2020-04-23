import 'package:flutter/material.dart';
//import 'package:fruithero/authenticate/register.dart';



class Offline extends StatelessWidget {

  final error;
  Offline({this.error});
  @override
  Widget build(BuildContext context) {
    //MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.pinkAccent[200],
         elevation: 0.0,
         title: Text(
            'Click to arrow to go back',
             textScaleFactor : 1,
            style: TextStyle(
            color: Colors.black,
            fontFamily: 'Comic',
            fontSize: 20
            ),
                    ),
      ),
      body: SingleChildScrollView(
              child: Center(
          child: Container(
            margin: EdgeInsets.only(top : MediaQuery.of(context).size.height * 0.2),
            child: Column(
                children: <Widget>[
                  Icon(
            Icons.warning,
            size: 200,
            color: Colors.pinkAccent[200],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Text(
            'You are Offline :(',
             textScaleFactor : 1,
            style: TextStyle(
            color: Colors.black,
            fontFamily: 'Comic',
            fontSize: 20
            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Text(
            'OR',
             textScaleFactor : 1,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Comic',
              fontSize: 20
            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Text(
            error,
             textScaleFactor : 1,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Comic',
              fontSize: 20
            ),
                    ),
                  ),
                ],
              ),
          ),
        ),
      )
    );
  }
}