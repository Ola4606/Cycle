import 'package:cycle/pages/loading.dart';
import 'package:cycle/services/auth.dart';
import 'package:flutter/material.dart';




class Settings extends StatefulWidget {
  final test;
  Settings({this.test});
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  
  final _auth = AuthService();
   bool loading = false;
  
  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
   
    return loading ? Loading() : Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 30, 0, 10),
        child: Row(
        children: <Widget>[
          Text(
            'Settings',
             textScaleFactor : 1,
             style: TextStyle(
               fontSize: 20
             ),
            ),
          Icon(Icons.settings),
         ],
        )
      ),
     
         Container(
           margin: EdgeInsets.only(top: 20),
           child: FlatButton(
             onPressed: () async {
               setState(() {
                 loading = true;
               });
                    await _auth.signOut();
                    setState(() {
                 loading = false;
               });
                  },
             
              child: Text(
                'Log Out',
                 textScaleFactor : 1,
                 style: TextStyle(
                   fontSize: 20,
                 ),
              )),
         ),
          
       
      ],
    );
  }
}





