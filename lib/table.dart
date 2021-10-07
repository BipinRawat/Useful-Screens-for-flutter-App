import 'package:flut_app/app_screen/table_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: "My App Title",
    home: Scaffold(
    appBar: AppBar(title: Text("My App Bar")),
    body: MyTable()
    )
    );
  }
}