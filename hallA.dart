// ignore: file_names
import 'package:finalpro/category.dart/widget/button_widget.dart';
import 'package:finalpro/category.dart/widget/date_picker_widget.dart';
import 'package:finalpro/category.dart/widget/datetime_picker_widget.dart';
import 'package:finalpro/category.dart/widget/time_picker_widget.dart';
import 'package:finalpro/category.dart/widget/totime.dart';
import 'package:flutter/material.dart';
import 'package:finalpro/category.dart/Hall.dart';

String dropdownValue = 'Time';
String dropdownValue2 = 'Duration';
String holder = '';

class HallAScreen extends StatelessWidget {
  HallAScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

/*------------------------------------------*/
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/*---------------------------------------- */
class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Widget buildPages() {
    switch (index) {
      case 0:
        return Scaffold(
          backgroundColor: Colors.pink,
          body: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatePickerWidget(),
                const SizedBox(height: 24),
                TimePickerWidget(),
                const SizedBox(height: 24),
                ToTimePicker(),
              ],
            ),
          ),
        );
      case 1:
        return Scaffold(
          backgroundColor: Colors.pink,
          body: Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DatetimePickerWidget(),
              ],
            ),
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '''A Hall''',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent.shade700,
        leading: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context, '/second');
          },
          child: SizedBox(
            width: 20.0,
            height: 30.0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.pinkAccent.shade700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          /*-----------*/
          children: <Widget>[
            Container(
              child: ListTile(
                title: SizedBox(
                  width: 170.0,
                  height: 170.0,
                  child: Image.asset(
                    'image/GIP_image/h1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                subtitle: Text(
                  '''       Adress : Irbid-X street - Near from Amman bus station - inside Rotana Hall , in 
                          Roof Level''',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontSize: 20,
                    height: 1.50,
                  ),
                ),
              ),
            ),
            ButtonHeaderWidget(
              title: 'Date',
              text: 'Select Date',
              onClicked: () {},
            ),
            ButtonHeaderWidget(
              title: 'From time',
              text: 'Select time',
              onClicked: () {},
            ),
            ButtonHeaderWidget(
              title: 'To time',
              text: 'Select time',
              onClicked: () {},
            ),
            /*---------*/ // buildPages(),
            /*Row(
            children: [
              Container(width:30.0,
child: Text("      "),
),
             /*------------------- */
              DropdownButton<String>(
    value: dropdownValue,
    icon:  Icon(Icons.keyboard_arrow_down),
    iconSize: 24,
    elevation: 16,
    style:  TextStyle(
      fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,height: 1.50,
    ),
    underline: Container(
      height: 2,
      color: Colors.pinkAccent.shade700,
    ),
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue = newValue!;
      });
      void getDropDownItem(){
 
    setState(() {
      holder = dropdownValue ;
    });
  }
    },
    items: <String>['Time','4:00 PM', '5:00 PM', '6:00 PM', '7:00 PM','8:00 PM','9:00 PM','10:00 PM']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(),
  ),
  /*------between Time and Duration-----*/
  Container( //alignment: Alignment.center,
      width: 20.0,
      child: ListTile( 
  title: Text("  ")
      ),),
/*-----------*/
 DropdownButton<String>(
    value: dropdownValue2,
    icon:  Icon(Icons.keyboard_arrow_down),
    iconSize: 24,
    elevation: 16,
    style:  TextStyle(
      fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,height: 1.50,
      
    ),
    underline: Container(
      height: 2,
      color: Colors.pinkAccent.shade700,
    ),
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue2 = newValue!;
      });
      
    },
    items: <String>['Duration','2 Hours', '3 Hours', '4 Hours', 'Open Time']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          
        );
      })
      .toList(),
  ), ] ),
  Container(height: 30.0,
child: Text("      "),
),
   
  
  TextField(readOnly:true,

  decoration:  InputDecoration(
    labelText: holder,
  border: OutlineInputBorder(),
    hintText: "price"
  ),
),
    */

            /*------ضغط على نفس ال Time and Duration-----*/
            Container(
              height: 300.0,
              width: 390.0,
              child: Text("      "),
            ),
/*----نهاية الضغط على نفس ال Time and Duration-----*/
          ],
        ),
      ),
    );
  }
}
