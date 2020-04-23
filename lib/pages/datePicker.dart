
import 'package:cycle/pages/homePage.dart';
import 'package:cycle/shared/curvedBar.dart';
import 'package:flutter/material.dart';



class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

//Today's Date
DateTime _currentdate = new DateTime.now();

//Storing the date time here
var lastMenusEnd ;

//Using date picker to get last menus
Future<Null> _selectdate(BuildContext context) async{
      final DateTime _seldate = await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2100),
        builder: (context,child) {
          
          return Theme(
            data: Theme.of(context).copyWith(
               primaryColor: Colors.pinkAccent[200],
                ),
             child:  SingleChildScrollView(child: child,)
             );
          
        }
      );
      if(_seldate!=null) {
        
         lastMenusEnd = _seldate;
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
         print(lastMenusEnd);
        
      }
  }

 

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                  child: Align(
            alignment: Alignment.center,
            child: Column(
              children :  <Widget>[
                 Text(
                   'Hello',
                   textScaleFactor : 1,
                   style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'Comic',
                     fontSize: 24
                     ),
                   ),
                   Text(
                   'Please insert correct details',
                   textScaleFactor : 1,
                   style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'Comic',
                     fontSize: 24
                     ),
                   ),
                   Row(
                     children :  <Widget>[
                     Text(
                    'When did your last menustration end ?',
                     textScaleFactor : 1, 
                     style: TextStyle(
                     color: Colors.black,
                     fontFamily: 'Comic',
                     fontSize: 12
                     ),
                   ),
                       
                     SizedBox(width: 5),

                    IconButton(onPressed: (){
                    _selectdate(context);
                    },icon: Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                   ),
                   ),
                     ]
                   ),
                    
                    Divider(
                      color: Colors.black,
                      height: 10
                    ),

                    Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.pinkAccent[200],
                           ),
                      child: FlatButton(
                        color: Colors.pinkAccent[200],
                        onPressed: () {
                          
                        
                          Navigator.pushReplacement(context, 
                                   MaterialPageRoute(builder: (context) => BottomNavbar(lastmenus: lastMenusEnd,)));
                                   
                        }, 
                         child: Text(
                      'Next',
                       textScaleFactor : 1, 
                       style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'Comic',
                       fontSize: 24
                       ),
                   ),
                   ),
                    )
              ]
            ),
          ),
        ),
    );
  }
}