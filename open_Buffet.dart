import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart'show timeDilation;

class Open_BuffetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Open Buffet",style:TextStyle( fontStyle: FontStyle.italic ,
  color: Colors.white),),
  
 backgroundColor: Colors.pinkAccent.shade700,
 leading: ElevatedButton(
   // backgroundColor: Colors.pinkAccent.shade700,
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context,'/third');
          },
          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back), ),
           style: TextButton.styleFrom(
            backgroundColor: Colors.pinkAccent.shade700,),
        ),
 //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),),
 ),

 body: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Container( alignment: Alignment.center,
      height: 40, width: 400,
      child: ListTile( 
  title: Text("  ")
      ),),
           Container(
          child:  Expanded(
              child: ListTile(
              title: Image.asset( 'image/Resturant/chainesefood.png', width: 400.0, height: 170.0, fit: BoxFit.fill, ),
                  ),
              ),
            ),
           Container(
          child:  Expanded(
              child: ListTile(
              title: Image.asset( 'image/Resturant/seafood.png', width: 400.0, height: 170.0, fit: BoxFit.fill, ),
                  ),
              ),
            ),
             Container(
          child:  Expanded(
              child: ListTile(
              title: Image.asset( 'image/Resturant/tradfood.png', width: 400.0, height: 170.0, fit: BoxFit.fill, ),
                  ),
              ),
            ),
        ],
   
 ),
    ),);
  }

  void setState(Null Function() param0) {}

}