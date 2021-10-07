import 'package:flutter/material.dart';

class MyTable extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Material(
        child:Container(
          margin: EdgeInsets.all(10.0),
          child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                    children:[
                      Text("Trainee Name",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                      Text("Trainee Department",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold))
                    ]
                ), TableRow(
                    children:[
                      Text("Bipin Rawat",style: TextStyle(fontSize: 30.0)),
                      Text("Flutter",style: TextStyle(fontSize: 30.0))
                    ]
                ),TableRow(
                    children:[
                      Text("Abhishek",style: TextStyle(fontSize: 30.0)),
                      Text("Flutter",style: TextStyle(fontSize: 30.0))
                    ]
                ),TableRow(
                    children:[
                      Text("Abhishek",style: TextStyle(fontSize: 30.0)),
                      Text("Ios",style: TextStyle(fontSize: 30.0))
                    ]
                )
              ]
          ),
        )
    );
  }
}