import 'package:flutter/material.dart';



class HallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halls",style:TextStyle( fontStyle: FontStyle.italic ,
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
/*--------*/
endDrawer:Drawer(child: ListView(children:<Widget>[
ListTile( //HOME ICON
  title: Text('''~~~~~~~~~~~~~~~~~~~~~
                      Halls             ~~~~~~~~~~~~~~~~~~~~~ ''' , 
  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700,),),
  
),

  

  ListTile( //Hall A
  title: SizedBox( width:50.0,  height: 50.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/HallA');
          },
          child: SizedBox(width:50.0,  height:50.0,
          child:Text('''
          A Hall
     ''',  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700,),), 
              ),
           style: TextButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade700,),
        ),
             
              ),
),),
ListTile( //Hall B
  title: SizedBox( width:50.0,  height: 50.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/HallB');
          },
          child: SizedBox(width:50.0,  height:50.0,
          child:Text('''
          B Hall
     ''',  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700,),), 
              ),
           style: TextButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade700,),
        ),
             
              ),
),),

ListTile( //Hall C
  title: SizedBox( width:50.0,  height: 50.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/HallC');
          },
          child: SizedBox(width:50.0,  height:50.0,
          child:Text('''
          C Hall
     ''',  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700,),), 
              ),
           style: TextButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade700,),
        ),
             
              ),
),),

ListTile( //Hall D
  title: SizedBox( width:50.0,  height: 50.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            //Navigator.pushNamed(context,'/HallA');
          },
          child: SizedBox(width:50.0,  height:50.0,
          child:Text('''
          D Hall
     ''',  style:TextStyle( fontStyle: FontStyle.italic , color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700,),), 
              ),
           style: TextButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade700,),
        ),
             
              ),
),),

ListTile( //Hall E
  title: SizedBox( width:50.0,  height: 50.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            //Navigator.pushNamed(context,'/HallA');
          },
          child: SizedBox(width:50.0,  height:50.0,
          child:Text('''
          E Hall
     ''',  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700,),), 
              ),
           style: TextButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade700,),
        ),
             
              ),
),),
],),
),
/*---------- */
 body: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /**---------- */
            Container(
              child: Text(""),
            ),
             Container(
          child:  Expanded(
              child: ListTile(
              title: Image.asset( 'image/GIP_image/hallhome.png', width: 170.0, height: 170.0, fit: BoxFit.fill, ), 
              subtitle: ListTile(
                title: Text('''         
         Welcome to the Halls screen
     All available halls exist when clicking 
                        on this button
 ''', style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 19,height: 1.50,),),
             subtitle: Icon(Icons.menu,color:Colors.pinkAccent.shade700,),),),),
         
           
       
             
              ),
                //Image.asset( 'image/GIP_image/h1.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
               
         
            /**---------- */
            /*
             Container(
          child:  Expanded(
              child: ListTile(
              title: Text("A Hall      ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Expanded(
              child:ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context,'/HallA');
          },
          child: SizedBox(width:400.0,  height:200.0,
          child:Image.asset( 'image/GIP_image/h1.png', width: 170.0, height: 170.0, fit: BoxFit.fill, ),
          ),
           style: TextButton.styleFrom(
            backgroundColor: Colors.white,),
        ),
             
              ),
                //Image.asset( 'image/GIP_image/h1.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
             
           
            ),
           Container(
          child:  Expanded(
              child: ListTile(
              title: Text("B Hall      ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/GIP_image/h4.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
            ),
             Container(
          child:  Expanded(
              child: ListTile(
              title: Text("C Hall         ",  style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700,),), 
              subtitle: SizedBox( width:170.0,  height: 170.0,
                child:Image.asset( 'image/GIP_image/h5.png', width: 50.0, height: 50.0, fit: BoxFit.fill, ),
                 ), ),
              ),
             
           
            ),*/
        ],
   



   
   /*-------------*/
    ),
    );
  }

}
/*Text('''         Welcome to the Halls screen
     If you need help please click on this 
                             button
 ''', style:TextStyle( fontStyle: FontStyle.italic  ,color: Colors.black, fontSize: 19,height: 1.50,),), */