import 'package:flutter/material.dart';
import 'package:finalpro/category.dart/open_Buffet.dart';

class ResturantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Resturants",style:TextStyle( fontStyle: FontStyle.italic ,
  color: Colors.white),),
  
 backgroundColor: Colors.pinkAccent.shade700,
 leading: ElevatedButton(
   // backgroundColor: Colors.pinkAccent.shade700,
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context,'/');
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
             Container(
          child:  Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/Rest1');
          },
          child: SizedBox(width:400.0,  height:200.0,
          child:Image.asset( 'image/Resturant/setmenu.png', width: 170.0, height: 170.0, fit: BoxFit.fill, ),
          ),
           style: TextButton.styleFrom(
            backgroundColor: Colors.white,),
        ),
             
              ),
             
           
            ),
            Container(
          child:  Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/Rest1');
          },
          child: SizedBox(width:400.0,  height:200.0,
          child:Image.asset( 'image/Resturant/openbuffet.png', width: 170.0, height: 170.0, fit: BoxFit.fill, ),
          ),
           style: TextButton.styleFrom(
            backgroundColor: Colors.white,),
        ),
            
              ),
             
           
            ),
          
            /* Container(
          child:  Expanded(
              child: ListTile(
              title: Text("Open buffet ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/Rest1');
          },
          child: Image.asset( 'image/Resturant/setmenu.png', width: 170.0, height: 170.0, fit: BoxFit.fill, ),
           style: TextButton.styleFrom(
            backgroundColor: Colors.white,),
          
        ),
                //Image.asset( 'image/Resturant/R3/MR3.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
             
           
            ),*/
        ],
   
 ),
    ),);
  }

}