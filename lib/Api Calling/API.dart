import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> postDataFire() async
  {
    var url = "https://shop-app-b78ff-default-rtdb.firebaseio.com/products.json";
    var response = await http.post(
      url,

      body: json.encode
        (
          {
            "quiz_id": "22",
            "name": "arjun pandey",
            "email": "asd@ex.com"
          }
      ),

    );
    print(response.statusCode);
  }

  Future<void> postDataCyno() async
  {
    var url = "http://lowy.cynotecksandbox.com/api/getQuestions";
    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: json.encode
        (
          {
            'quiz_id': "22",
            'name': "qqq",
            "email": "asd@ex.com"
          }
      ),
    );
    print(response.statusCode);
    print('this is the cynoteck');
  }

  Future<void> getData() async
  {
    var response = await http.get("http://lowy.cynotecksandbox.com/api/getQuiz");
    print(response.statusCode);
    print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : 'Api hit',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ) ,
        home: Scaffold(
          appBar: AppBar(
            title : Text('Api Calling'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    child: Text('Post data',
                      style: TextStyle(color: Colors.black),),
                    onPressed: postDataCyno
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                    child: Text('Post data Firebase',
                      style: TextStyle(color: Colors.black),),
                    onPressed: postDataFire
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                    child: Text('get data from Cynoteck',
                      style: TextStyle(color: Colors.black),),

                    onPressed: getData
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(
                    child: Text('demo button'),
                    onPressed: ()
                    {
                      print('hello');
                    }
                ),
              ],
            ),
          ),
        )
    );
  }
}


