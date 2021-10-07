import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      title: "Async",
      home: TestAsync() ,
    )
  );
}
clickMeFun(){
  print("Test 1");
  Test2();
  Test10();
  print("Test 3");
}
Test2() async {
  await Future.delayed(Duration(seconds: 5),() {
    print("Test 5");
  });
  print("Test 2");
}
Test10() async {
  await Future.delayed(Duration(seconds: 3),() {
    print("Test 10");
  });
  print("Test 6");
}
class TestAsync extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Async"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Click Me"),
            onPressed: () {
              clickMeFun();
            },
          ),
        ),
      ),
    );
  }
}