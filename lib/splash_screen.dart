import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Splash Screen",
    home: SplashScreen(),
     )
   );
 }

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return SplashScreenState();
   }
 }
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
    ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>NextScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: Text("Splash Sscreen"),
        ),
        body: Center(
          child: Image.network("https://cynoteck.com/wp-content/uploads/2020/07/cynoteck-partnership-company.png")
        )
      );
    }
}
class NextScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    title: Text("Next Screen"),
    ),
    body: Center(
      child: Text("Next Screen Test",
          style: TextStyle(fontSize: 40.0),),
        ),
      );
    }
  }