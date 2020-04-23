import 'package:cycle/pages/homePage.dart';
import 'package:cycle/pages/settings.dart';
import 'package:cycle/pages/tips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:ui' as ui;


class BottomNavbar extends StatefulWidget {
 final lastmenus;
BottomNavbar({this.lastmenus}){
print(lastmenus);
print(lastmenus);
print(lastmenus);
print(lastmenus);
print(lastmenus);
print(lastmenus);
}
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}



class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
   
  List<Widget> _children;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
     setState(() {
       _children = [
      Home(lastmenus: widget.lastmenus,),
      Tips(),
      Settings()
  ];
     });
  
  }

  

  void onTappedBar (int index) {
         setState(() {
            _currentIndex = index;
            
         
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap : onTappedBar,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.grey[300],
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 400),
        index: 0,
        height: 52,
        items: <Widget>[

           ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return ui.Gradient.linear(
                Offset(4.0, 24.0),
                Offset(24.0, 4.0),
                [
                Colors.pink[200],
                Colors.pink[800],
                ],
              );
            },
            child: Icon(Icons.cached ,size: 30,),
           ),
           ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return ui.Gradient.linear(
                Offset(4.0, 24.0),
                Offset(24.0, 4.0),
                [
               Colors.pink[200],
                Colors.pink[800],
               ],
              );
            },
            child: Icon(Icons.star, size: 30,),
          ),
         ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return ui.Gradient.linear(
                Offset(4.0, 24.0),
                Offset(24.0, 4.0),
                [
                Colors.pink[200],
                Colors.pink[800],
               ],
              );
            },
            child: Icon(Icons.settings, size: 30,),
          
         )
        ],
       
      ),
    );
  }
}



