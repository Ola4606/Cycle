import 'package:cycle/authentication/authenticate.dart';
import 'package:cycle/model/user.dart';
import 'package:cycle/shared/curvedBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return BottomNavbar();
    }
    
  }
}