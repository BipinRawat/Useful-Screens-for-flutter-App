import 'package:flutter/material.dart';

void main(){
  runApp(
    Material(
      color:Colors.blue,
        child: Center(
          child:
      Text("I Am Bipin",textDirection: TextDirection.ltr,
        style: TextStyle(color:Colors.yellow,fontSize: 50.0),
      )
    )
    )
    );
}