import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My App Title",
      home: Scaffold(
        appBar: AppBar(title: Text("My App Bar")),
      body: Material(
          color:Colors.blue,
          child: Center(
              child:
              Text("I Am Bipin",textDirection: TextDirection.ltr,
                style: TextStyle(color:Colors.black,fontSize: 50.0),
              )
          )
      ),
    )
    )
  );
}