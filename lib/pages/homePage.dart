import 'package:cycle/animation/animationReflectly.dart';
import 'package:cycle/model/date.dart';
import 'package:cycle/pages/datePicker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';





class Home extends StatefulWidget {

final lastmenus;
Home({this.lastmenus});

  @override
 _HomeState createState() => _HomeState();

//Using date picker to get last menus
//Day last menustration ended
get lastMenusEnd => lastmenus;// use date picker to get the date and store it here 

}

// Getting the present day
DateTime _currentdate = new DateTime.now();



// Adding watch day periods to the last menus date
// So normally am using a set Day span of 28days...
// Cause its meant to range from 21days to 35days...
// So am adding a three day notice alert which is going to be on the 25th day... 
// And also just a 2 day after.. Which will be in light pink box also 

// cycle1
var d25 = lastMenusEnd.add(new Duration(days: 25));//minor alert
var d26 = lastMenusEnd.add(new Duration(days: 26));//minor alert
var d27 = lastMenusEnd.add(new Duration(days: 27));//minor alert
var d28 = lastMenusEnd.add(new Duration(days: 28));//major
var d29 = lastMenusEnd.add(new Duration(days: 29));//major
var d30 = lastMenusEnd.add(new Duration(days: 30));//major
var d31 = lastMenusEnd.add(new Duration(days: 31));//major ....
var d32 = lastMenusEnd.add(new Duration(days: 32));//major
var d33 = lastMenusEnd.add(new Duration(days: 33));//major
var d34 = lastMenusEnd.add(new Duration(days: 34));//minor alert
var d35 = lastMenusEnd.add(new Duration(days: 35));//minor alert
var d36 = lastMenusEnd.add(new Duration(days: 36));//minor alert

//cycle 2 (start 25day count from where major 4 ended)
var dd25 = d31.add(new Duration(days: 25));//minor alert
var dd26 = d31.add(new Duration(days: 26));//minor alert
var dd27 = d31.add(new Duration(days: 27));//minor alert
var dd28 = d31.add(new Duration(days: 28));//major
var dd29 = d31.add(new Duration(days: 29));//major
var dd30 = d31.add(new Duration(days: 30));//major
var dd31 = d31.add(new Duration(days: 31));//major ....
var dd32 = d31.add(new Duration(days: 32));//major
var dd33 = d31.add(new Duration(days: 33));//major
var dd34 = d31.add(new Duration(days: 34));//minor alert
var dd35 = d31.add(new Duration(days: 35));//minor alert
var dd36 = d31.add(new Duration(days: 36));//minor alert

//cycle 3 (start 25day count from where major ended)
var ddd25 = dd31.add(new Duration(days: 25));//minor alert
var ddd26 = dd31.add(new Duration(days: 26));//minor alert
var ddd27 = dd31.add(new Duration(days: 27));//minor alert
var ddd28 = dd31.add(new Duration(days: 28));//major
var ddd29 = dd31.add(new Duration(days: 29));//major
var ddd30 = dd31.add(new Duration(days: 30));//major
var ddd31 = dd31.add(new Duration(days: 31));//major ....
var ddd32 = dd31.add(new Duration(days: 32));//major
var ddd33 = dd31.add(new Duration(days: 33));//major
var ddd34 = dd31.add(new Duration(days: 34));//minor alert
var ddd35 = dd31.add(new Duration(days: 35));//minor alert
var ddd36 = dd31.add(new Duration(days: 36));//minor alert

//cycle 4 (start 25day count from where major ended)
var dddd25 = ddd31.add(new Duration(days: 25));//minor alert
var dddd26 = ddd31.add(new Duration(days: 26));//minor alert
var dddd27 = ddd31.add(new Duration(days: 27));//minor alert
var dddd28 = ddd31.add(new Duration(days: 28));//major
var dddd29 = ddd31.add(new Duration(days: 29));//major
var dddd30 = ddd31.add(new Duration(days: 30));//major
var dddd31 = ddd31.add(new Duration(days: 31));//major ....
var dddd32 = ddd31.add(new Duration(days: 32));//major
var dddd33 = ddd31.add(new Duration(days: 33));//major
var dddd34 = ddd31.add(new Duration(days: 34));//minor alert
var dddd35 = ddd31.add(new Duration(days: 35));//minor alert
var dddd36 = ddd31.add(new Duration(days: 36));//minor alert


var formattedToday = new DateFormat.yMMMd().format(_currentdate);

//Converting cycle 1 to a readable format

var d25F = new DateFormat.yMMMd().format(d25);
var d26F = new DateFormat.yMMMd().format(d26);
var d27F = new DateFormat.yMMMd().format(d27);
var d28F = new DateFormat.yMMMd().format(d28);
var d29F = new DateFormat.yMMMd().format(d29);
var d30F = new DateFormat.yMMMd().format(d30);
var d31F = new DateFormat.yMMMd().format(d31);
var d32F = new DateFormat.yMMMd().format(d32);
var d33F = new DateFormat.yMMMd().format(d33);
var d34F = new DateFormat.yMMMd().format(d34);
var d35F = new DateFormat.yMMMd().format(d35);
var d36F = new DateFormat.yMMMd().format(d36);

//Converting cycle 2 to a readable format

var dd25F = new DateFormat.yMMMd().format(dd25);
var dd26F = new DateFormat.yMMMd().format(dd26);
var dd27F = new DateFormat.yMMMd().format(dd27);
var dd28F = new DateFormat.yMMMd().format(dd28);
var dd29F = new DateFormat.yMMMd().format(dd29);
var dd30F = new DateFormat.yMMMd().format(dd30);
var dd31F = new DateFormat.yMMMd().format(dd31);
var dd32F = new DateFormat.yMMMd().format(dd32);
var dd33F = new DateFormat.yMMMd().format(dd33);
var dd34F = new DateFormat.yMMMd().format(dd34);
var dd35F = new DateFormat.yMMMd().format(dd35);
var dd36F = new DateFormat.yMMMd().format(dd36);

//Converting cycle 3 to a readable format

var ddd25F = new DateFormat.yMMMd().format(ddd25);
var ddd26F = new DateFormat.yMMMd().format(ddd26);
var ddd27F = new DateFormat.yMMMd().format(ddd27);
var ddd28F = new DateFormat.yMMMd().format(ddd28);
var ddd29F = new DateFormat.yMMMd().format(ddd29);
var ddd30F = new DateFormat.yMMMd().format(ddd30);
var ddd31F = new DateFormat.yMMMd().format(ddd31);
var ddd32F = new DateFormat.yMMMd().format(ddd32);
var ddd33F = new DateFormat.yMMMd().format(ddd33);
var ddd34F = new DateFormat.yMMMd().format(ddd34);
var ddd35F = new DateFormat.yMMMd().format(ddd35);
var ddd36F = new DateFormat.yMMMd().format(ddd36);

//Converting cycle 4 to a readable format

var dddd25F = new DateFormat.yMMMd().format(dddd25);
var dddd26F = new DateFormat.yMMMd().format(dddd26);
var dddd27F = new DateFormat.yMMMd().format(dddd27);
var dddd28F = new DateFormat.yMMMd().format(dddd28);
var dddd29F = new DateFormat.yMMMd().format(dddd29);
var dddd30F = new DateFormat.yMMMd().format(dddd30);
var dddd31F = new DateFormat.yMMMd().format(dddd31);
var dddd32F = new DateFormat.yMMMd().format(dddd32);
var dddd33F = new DateFormat.yMMMd().format(dddd33);
var dddd34F = new DateFormat.yMMMd().format(dddd34);
var dddd35F = new DateFormat.yMMMd().format(dddd35);
var dddd36F = new DateFormat.yMMMd().format(dddd36);








//Placing the newly formatted dates into the list for the List Tile
//Am also placing different colors on each list item
//Am also add a delay for the delayed Animation so it looks fresher
List<DateArrange> dates = [
  DateArrange(dateName: formattedToday, color: Colors.white, delay: 3000),

  DateArrange(dateName: 'Cycle 1', color: Colors.white, delay: 3100),
  // Cycle 1

   DateArrange(dateName: d25F, color: Colors.pinkAccent[100], delay: 3100),//minor
   DateArrange(dateName: d26F, color: Colors.pinkAccent[100], delay: 3200),//minor
   DateArrange(dateName: d27F, color: Colors.pinkAccent[100], delay: 3300),//minor
   DateArrange(dateName: d28F, color: Colors.redAccent[700], delay: 3400),//major
   DateArrange(dateName: d29F, color: Colors.redAccent[700], delay: 3500),//major
   DateArrange(dateName: d30F, color: Colors.redAccent[700], delay: 3600),//major
   DateArrange(dateName: d31F, color: Colors.redAccent[700], delay: 3700),//major
   DateArrange(dateName: d32F, color: Colors.redAccent[700], delay: 3800),//major
   DateArrange(dateName: d33F, color: Colors.redAccent[700], delay: 3900),//major
   DateArrange(dateName: d34F, color: Colors.pinkAccent[100], delay: 4000),//minor
   DateArrange(dateName: d35F, color: Colors.pinkAccent[100], delay: 4100),//minor
   DateArrange(dateName: d36F, color: Colors.pinkAccent[100], delay: 4200),//minor

   DateArrange(dateName: 'Cycle 2', color: Colors.white, delay: 4300),
   // Cycle 2

   DateArrange(dateName: dd25F, color: Colors.pinkAccent[100], delay: 4300),//minor
   DateArrange(dateName: dd26F, color: Colors.pinkAccent[100], delay: 4400),//minor
   DateArrange(dateName: dd27F, color: Colors.pinkAccent[100], delay: 4500),//minor
   DateArrange(dateName: dd28F, color: Colors.redAccent[700], delay: 4600),//major
   DateArrange(dateName: dd29F, color: Colors.redAccent[700], delay: 4700),//major
   DateArrange(dateName: dd30F, color: Colors.redAccent[700], delay: 4800),//major
   DateArrange(dateName: dd31F, color: Colors.redAccent[700], delay: 4900),//major
   DateArrange(dateName: dd32F, color: Colors.redAccent[700], delay: 5000),//major
   DateArrange(dateName: dd33F, color: Colors.redAccent[700], delay: 5100),//major
   DateArrange(dateName: dd34F, color: Colors.pinkAccent[100], delay: 5200),//minor
   DateArrange(dateName: dd35F, color: Colors.pinkAccent[100], delay: 5300),//minor
   DateArrange(dateName: dd36F, color: Colors.pinkAccent[100], delay: 5400),//minor


  DateArrange(dateName: 'Cycle 3', color: Colors.white, delay: 5500),
    // Cycle 3

   DateArrange(dateName: ddd25F, color: Colors.pinkAccent[100], delay: 5500),//minor
   DateArrange(dateName: ddd26F, color: Colors.pinkAccent[100], delay: 5600),//minor
   DateArrange(dateName: ddd27F, color: Colors.pinkAccent[100], delay: 5700),//minor
   DateArrange(dateName: ddd28F, color: Colors.redAccent[700], delay: 5800),//major
   DateArrange(dateName: ddd29F, color: Colors.redAccent[700], delay: 5900),//major
   DateArrange(dateName: ddd30F, color: Colors.redAccent[700], delay: 6000),//major
   DateArrange(dateName: ddd31F, color: Colors.redAccent[700], delay: 6100),//major
   DateArrange(dateName: ddd32F, color: Colors.redAccent[700], delay: 6200),//major
   DateArrange(dateName: ddd33F, color: Colors.redAccent[700], delay: 6300),//major
   DateArrange(dateName: ddd34F, color: Colors.pinkAccent[100], delay: 6400),//minor
   DateArrange(dateName: ddd35F, color: Colors.pinkAccent[100], delay: 6500),//minor
   DateArrange(dateName: ddd36F, color: Colors.pinkAccent[100], delay: 6600),//minor
    

   DateArrange(dateName: 'Cycle 4', color: Colors.white, delay: 6700), 
   // Cycle 4

   DateArrange(dateName: dddd25F, color: Colors.pinkAccent[100], delay: 6700),//minor
   DateArrange(dateName: dddd26F, color: Colors.pinkAccent[100], delay: 6800),//minor
   DateArrange(dateName: dddd27F, color: Colors.pinkAccent[100], delay: 6900),//minor
   DateArrange(dateName: dddd28F, color: Colors.redAccent[700], delay: 7100),//major
   DateArrange(dateName: dddd29F, color: Colors.redAccent[700], delay: 7200),//major
   DateArrange(dateName: dddd30F, color: Colors.redAccent[700], delay: 7300),//major
   DateArrange(dateName: dddd31F, color: Colors.redAccent[700], delay: 7400),//major
   DateArrange(dateName: dddd32F, color: Colors.redAccent[700], delay: 7500),//major
   DateArrange(dateName: dddd33F, color: Colors.redAccent[700], delay: 7600),//major
   DateArrange(dateName: dddd34F, color: Colors.pinkAccent[100], delay: 7700),//minor
   DateArrange(dateName: dddd35F, color: Colors.pinkAccent[100], delay: 7800),//minor
   DateArrange(dateName: dddd36F, color: Colors.pinkAccent[100], delay: 7900),//minor
   
];



class _HomeState extends State<Home> {

 

  final int delayedAmount = 500;
  //final AuthService _auth = AuthService();

  

  

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
        //   actions: <Widget>[
        //      IconButton(onPressed: (){
        //          _selectdate(context);
        //      },icon: Icon(
        //        Icons.calendar_today,
        //        color: Colors.black,
        //        ),)
        // ],
      ),
      body:  SingleChildScrollView(
        physics: ScrollPhysics(),
          child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB( 0 , 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                                  child: DelayedAnimation(
                   child:  
                    Text(
                            'lll' ,
                     textScaleFactor : 1,
                    style: TextStyle(
                      fontFamily: 'Comic',
                     color: Colors.black,
                      fontSize: 20,

                    ),
                    ),
              
             
                    delay: delayedAmount + 1000,
                              ),
              ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 10),
                    child: DelayedAnimation(
                child: Align(
                  alignment: Alignment.topLeft,
                                  child: Text(
                        'This is your cycle:',
                         textScaleFactor : 1,
                        style: TextStyle(
                        fontFamily: 'Comic',
                        color: Colors.black,
                        fontSize: 25
                        ),
                        ),
                ),
                      delay: delayedAmount + 2000,
                    ),
                  ),
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
             itemCount: dates.length,
               itemBuilder: (context, index){
         return DelayedAnimation(
                    child: Container(
             margin: EdgeInsets.fromLTRB( 15, 0, 15, 20),
             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             height: 80,
             width: 160,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(17.0),
             color: dates[index].color,
        ),
             child: ListTile(
               onTap: () {
                   //Shoe BreakFast, Lucnch $ Dinner for that day
                 },
                 title: Padding(
                   padding: const EdgeInsets.only(top: 8.0),
                   child: Text(
                     '${dates[index].dateName}',
                      textScaleFactor : 1,
                     style: TextStyle(
                       color: Colors.black,
                       fontFamily: 'Comic',
                       fontSize: 25
                     ),
                     ),
                 ),
                 subtitle: Text(
                   'BreakFast, Lunch, Dinner',
                    textScaleFactor : 1,
                   style: TextStyle(
                     color: Colors.black87,
                     fontFamily: 'Comic',
                     fontSize: 14
                   ),
                   ),
                  //  leading: Padding(
                  //    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  //    child: CircleAvatar(
                  //    backgroundImage: AssetImage(dates[index].image),
                  //    radius: 20,
                  //  ),
                  //  ),
                  //  trailing: Padding(
                  //    padding: const EdgeInsets.fromLTRB(0, 14, 0, 9),
                  //    child: CircleAvatar(
                  //        child :  Text(
                  //      '${dates[index].dayName}',
                  //       textScaleFactor : 1,
                  //      style: TextStyle(
                  //      color: Colors.black,
                  //      fontFamily: 'Comic',
                  //      fontWeight: FontWeight.bold,
                  //      fontSize: 15
                  //    ),
                  //    ),
                  //    radius: 30,
                  //    backgroundColor: dates[index].color,
                  //    ),
                  //  ),
                   
                  ),
           ),
           delay: delayedAmount + dates[index].delay,
           // Using this logic for the delay.. this means the listview builder would always complete 1 cycle
           // before its starts another. apply this for ads
         );
         }
             ),
      ],
    ),
  ),
      ),
    );
  }
}

