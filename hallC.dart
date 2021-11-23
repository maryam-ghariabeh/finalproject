// ignore: file_names
import 'package:flutter/material.dart';
import 'package:finalpro/category.dart/Hall.dart';
String dropdownValue = 'Time';
String dropdownValue2 = 'Duration';
String holder = '' ;

class HallCScreen extends StatelessWidget {
   HallCScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
      );}}
/*------------------------------------------*/
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/*---------------------------------------- */
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('''C Hall''',style:TextStyle( fontStyle: FontStyle.italic ,
  color: Colors.white),),
  
 backgroundColor: Colors.pinkAccent.shade700,
 leading: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context,'/second');
          },
          child: SizedBox(width:20.0,  height:30.0,
          child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color:Colors.white,),
          ),),
           style: TextButton.styleFrom(
            backgroundColor: Colors.pinkAccent.shade700,),
        ),),
      body: Column(

        /*-----------*/
        children:<Widget>[
         Container(
          child:  Expanded(
              child: ListTile(
              title: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/GIP_image/h5.png', fit: BoxFit.fill, ), ),
                subtitle: Text('''    Adress : Irbid - Y street - inside Alsafeir 
                       Hall , in level 3''',style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 20,height: 1.50,),),), ), ),
/*---------*/
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
Container(height: 300.0,width:390.0,
child: Text("      "),
),
/*----نهاية الضغط على نفس ال Time and Duration-----*/



        ]
        ,)
        ,)
        ;}
        }
  








