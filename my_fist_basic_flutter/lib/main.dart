import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter ครับ"),
        ),
        body: Center(
          child: Text(
            "Hello Everyone",
            style: TextStyle(fontSize: 30, color: Colors.pink),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
