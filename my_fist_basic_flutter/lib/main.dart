import 'dart:developer';

import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'MoneyBox.dart';
void main() {
  
  var app = MyApp();
  runApp(app);
}

// สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init State");
  }
  // แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    print("Call Build");
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "บัญชีของฉัน",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Text(number.toString(),style: TextStyle(fontSize: 30),)
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add)
        ,),);
  }
}



