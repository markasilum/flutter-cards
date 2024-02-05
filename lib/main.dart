import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Homepage',
        style: TextStyle(color: Colors.white),),
      ),
      drawer: Container(
        color: Colors.blue[900],
        width: 400,
        height: MediaQuery.of(context).size.height,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white,),
              title: Text("Dashboard",style: TextStyle(color: Colors.white),),
              onTap: (){
                print("Dashboard cliked");
              },
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey,
        width: screenSize.width,
        height: screenSize.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: screenSize.width*.2,
              height: screenSize.height*.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenSize.height*.25,
                      width: screenSize.width*.2,
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))

                      ),
                    ),
                    Container(
                      width: screenSize.width*.2,

                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white
                        
                      ),
                      child: Text(
                        "4-103 IT Elective 5 (2024)",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Computer Studies",
                        style: TextStyle(fontWeight: FontWeight.normal),),
                    )

                ]),
              ),
            ),
            
          ], ),
      ),
    );
  }
} 