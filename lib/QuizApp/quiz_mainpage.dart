import 'package:flut_app/QuizApp/quiz2page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: QuizApp(),
    )
  );
}
class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNavigation();
  }
}
class _MyNavigation extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("QUIZ MANIA",style: TextStyle(fontWeight: FontWeight.w900,
        color: Colors.black,fontSize: 25),),
      ),
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
          FrontImg(),
        Container(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            widthFactor: 0.3,
            heightFactor:0.1 ,
              child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)
              ),
            color: Colors.teal,
            child: Text("Start",style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w900),),
            onPressed:() {
            Navigator.push(context,
            MaterialPageRoute(builder:
                (context)=>MyPageDetail()
          )
    );
    }
      ),
    ),
        ),
    ]),
    );
  }
}
class FrontImg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://images.unsplash.com/photo-1533035350251-aa8b8e208d95?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzZ8fHF1aXolMjBiYWNrZ3JvdW5kfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.4),
      colorBlendMode: BlendMode.darken,
    );
  }
}