import 'package:cycle/authentication/wrapper.dart';
import 'package:cycle/model/user.dart';
import 'package:cycle/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToHome();
          } 
          // else {
          //   _navigateToLogin();
          // }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => 
                 StreamProvider<User>.value(
                    value: AuthService().user,
                            child: MaterialApp(
                              debugShowCheckedModeBanner: false,
                                home: Wrapper(),
      ),
    ),
            
        )
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Stack(

            children: <Widget>[
          Container(
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
             child: Center(
            child: Column(
              
              children: <Widget>[
                Container(
                   child: CircleAvatar(
                     backgroundImage:  AssetImage('assets/images/chick.png'),
                     radius: 60,
                     backgroundColor: Colors.white,
                      ),
                   ),
                   //SizedBox(height: 15,),
           Padding(
             padding: const EdgeInsets.only(top :8.0),
             child: Text(
                    "Cycle",
                     textScaleFactor : 1,
                    style: TextStyle(
                      color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: 'Comic',

                    ),
                  ),
           ),
                
                 Container(
                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),   
                   child: Column(
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only( top :18.0),
                         child: Text(
                            '"With Cycle you ',
                             textScaleFactor : 1,
                            style: TextStyle(
                         color: Colors.black,
                           fontSize: 20.0,
                           fontFamily: 'Comic',

                            ),
                ),
                       ),
                 Text(
                          'never need to worry',
                           textScaleFactor : 1,
                          style: TextStyle(
                       color: Colors.black,
                         fontSize: 20.0,
                         fontFamily: 'Comic',

                          ),
                ),
                Text(
                          'about unplanned accidents"',
                           textScaleFactor : 1,
                          style: TextStyle(
                       color: Colors.black,
                         fontSize: 20.0,
                         fontFamily: 'Comic',

                          ),
                ),
                     ],
                   ),
                 ),
              ],
            ),
          ),
        ),
             
            ],
          ),
        ),
    );
  }


}