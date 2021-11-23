import 'package:flutter/material.dart';

class ClothesScreen extends StatelessWidget {
   ClothesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: true,
      home:Scaffold(
      appBar: AppBar(
        title: Text("Dresses",style:TextStyle( fontStyle: FontStyle.italic ,
  color: Colors.white),),
  
 backgroundColor: Colors.pinkAccent.shade700,
 leading: ElevatedButton(
   // backgroundColor: Colors.pinkAccent.shade700,
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pop(context,'/');
          },
          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back), 
          ),
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
              child: ListTile(
              title: Text("Beuty Fashion",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/Clothes/clo1/CM1.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
             
           
            ),
           Container(
          child:  Expanded(
              child: ListTile(
              title: Text("Lovely Fashion ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/Clothes/clo2/MC2.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
            ),
             Container(
          child:  Expanded(
              child: ListTile(
              title: Text("Modern Fashion ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/Clothes/clo3/CM3.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
             
           
            ),
        ],
   
 ),
    ),);
  }

}