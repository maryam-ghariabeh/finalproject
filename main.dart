import 'package:finalpro/category.dart/hallA.dart';
import 'package:finalpro/category.dart/hallB.dart';
import 'package:finalpro/category.dart/hallC.dart';
import 'package:flutter/material.dart';

import 'package:finalpro/category.dart/Hall.dart';

import 'package:finalpro/category.dart/Resturant.dart';

import 'package:finalpro/category.dart/Clothes.dart';

import 'package:finalpro/category.dart/open_Buffet.dart';

void main() => runApp(
      MaterialApp(
        title: 'Named Routes Demo',
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => MyApp(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => HallScreen(),
          '/third': (context) => ResturantScreen(),
          '/forth': (context) => ClothesScreen(),
          '/Rest1': (context) => Open_BuffetScreen(),
          '/HallA': (context) => HallAScreen(),
          '/HallB': (context) => HallBScreen(),
          '/HallC': (context) => HallCScreen(),
        },
      ),
    );

/*---------------------*/
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //start
        //theme: ThemeData(primaryColor: Colors.black),
        title: "C&C organizing",
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "CC organizing",
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),

            backgroundColor: Colors.pinkAccent.shade700,
            actions: <Widget>[
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ))
            ],
            centerTitle: true,
//leading:IconButton(onPressed: (){}, icon: Icon(Icons.search) ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("Lujain Alnouti",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  accountEmail: Text("lujain.nouti@hotmail.com",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade700,
                  ),
                ),
/***********************/
                ListTile(
                  //HOME ICON
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
/*...............*/
                ListTile(
                  //CATEG
                  title: Text(
                    "Categories",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.apps,
                    color: Colors.black,
                  ),

                  onLongPress: () {},
                ),
/*...............*/
                ListTile(
                  //To do list
                  title: Text(
                    "To do list",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.storage,
                    color: Colors.black,
                  ),
                  onLongPress: () {},
                ),
/*...............*/
                ListTile(
                  //Setting
                  title: Text(
                    "Setting",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
/*...............*/
                ListTile(
                  //Logout
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.black,
                  ),
                  onLongPress: () {},
                ),
/*************************/
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(color: Colors.pinkAccent.shade700, height: 2),
                SizedBox(
                  height: 8,
                ),
                /*------------*/
                /*Container( alignment: Alignment.center,
      height: 15, width: 400,
      child: ListTile( 
  title: Text("  ")
      ),),*/

                /************** */
                Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 400,
                  child: ListTile(
                      title: Text(
                    "Categories",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.pinkAccent.shade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),

                /************** */
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 400,
                  child: ListTile(
                    //Hall

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Image.asset(
                        'image/GIP_image/hallnew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                /************** */
                //resturant
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.pushNamed(context, '/third');
                      },
                      child: Image.asset(
                        'image/Resturant/restnew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        Navigator.pushNamed(context, '/forth');
                      },
                      child: Image.asset(
                        'image/Clothes/dress.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),

                /************* */

                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // Navigator.pushNamed(context,'/forth');
                      },
                      child: Image.asset(
                        'image/sweet/sweets.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),

                /************* */
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // Navigator.pushNamed(context,'/forth');
                      },
                      child: Image.asset(
                        'image/category/beutynew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                    //Image.asset('image/category/beutynew.png'),
                  ),
                ),
                /************* */

                Container(
                  alignment: Alignment.center,
                  height: 80, width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // Navigator.pushNamed(context,'/forth');
                      },
                      child: Image.asset(
                        'image/category/flownew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  //Image.asset('image/category/flownew.png'),
                ),
                /************* */
                Container(
                  alignment: Alignment.center,
                  height: 80, width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // Navigator.pushNamed(context,'/forth');
                      },
                      child: Image.asset(
                        'image/category/DJnew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  //Image.asset('image/category/DJnew.png'),
                ),
                /************* */
                Container(
                  alignment: Alignment.center,
                  height: 80, width: 400,
                  child: ListTile(
                    //Clothes

                    title: ElevatedButton(
                      // Within the `FirstScreen` widget
                      onPressed: () {
                        // Navigate to the second screen using a named route.
                        // Navigator.pushNamed(context,'/forth');
                      },
                      child: Image.asset(
                        'image/category/photonew.png',
                        width: 170.0,
                        height: 170.0,
                        fit: BoxFit.fill,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  //Image.asset('image/category/photonew.png'),
                ),
                /************* */
              ],
            ),
          ),
        ));
  }
}
