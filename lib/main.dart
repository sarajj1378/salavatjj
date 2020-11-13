import 'package:flutter/material.dart';

void main() {
  runApp(secondPage());
}

// ignore: camel_case_types
class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class secondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondPagestate();
  }
}

class secondPagestate extends State {
  int count = 0;
  int kol=0;
  @override
  void click() {
    setState(() {
      count++;
    });
  }
void addkol(){
  setState(() {
    kol += count;
    count = 0;
  });
}
void resetkol(){
  setState(() {
    kol=0;
  });
}
  void resetCount(){
    setState(() {
      count=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    print(count.toString());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('صلوات شمار')),
        body:Container(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
             Container( color: Colors.amberAccent,  child: Column( children: <Widget>[

               Container(
                child:   Text('تعداد کل صلوات ها:'+kol.toString(), style: TextStyle(fontSize: 20.0)),

                alignment: Alignment.center,
                width: double.infinity,

              ),
            //  RaisedButton(onPressed:click , child: Text('شمارش'))
                 //count.toString()
             /*  IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: click,
                 iconSize: 60,
            )
                 */

                Container(
                 child:
                 /*Row( children:
                   <Widget>[   TextFormField(
                        decoration: const InputDecoration(
                        hintText: 'Enter your email',
                       ),
                       validator: (value) {
                       if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ) , */
                 IconButton(
                   icon: Icon(Icons.refresh_rounded),
                   onPressed: resetkol,
                   iconSize: 30,

                 )
                   // ])

                 )
             ]) ),
                 Container(

                   //color:Colors.purpleAccent,
                   width: double.infinity,
                   child:Center(
                   child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:<Widget>[
                   Text(count.toString(), style: TextStyle(fontSize: 40.0)),
                     IconButton(
                       icon: Icon(Icons.auto_awesome),
                       onPressed: click,
                       iconSize: 70,

                     )
                     //RaisedButton(onPressed:click , child: Text('شمارش'))

                   ],

                 ),)),

              // Spacer(),


                 Container(
                   color:Colors.redAccent,
                   width: double.infinity,

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:<Widget>[
                       IconButton(
                         icon: Icon(Icons.refresh),
                         onPressed: resetCount,
                         iconSize: 60,

                       ),
                       RaisedButton(onPressed:addkol , child: Text('افزودن به کل'))

                     ],

                   ),


                 )
          ],
        )),
      ),
    );
  }
}
