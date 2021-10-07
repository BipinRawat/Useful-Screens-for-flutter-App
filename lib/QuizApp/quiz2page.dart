import 'package:flut_app/QuizApp/category.dart';
import 'package:flut_app/QuizApp/tech_quiz_home.dart';
import 'package:flutter/material.dart';

class MyPageDetail extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String value;
  @override
  Widget build(BuildContext context) {
    var _blankFocusNode = new FocusNode();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
        "Welcome To Quiz MANIA",
          style: TextStyle(color: Colors.black),
      ),),
      body:GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          FocusScope.of(context).requestFocus(_blankFocusNode);
        },
        child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
            BgImage(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Card(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Please Enter Your Name';
                              }
                              return null;
                            },
                            autofocus : false,
                            onChanged : (text){
                              value = text;
                            },
                            decoration: InputDecoration(
                                hintText: "Username",labelText: "Enter Your Name",
                                labelStyle:TextStyle(fontWeight: FontWeight.w900),

                            ),
                          ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black)
                          ),
                          onPressed: () {
                            if (_formKey.currentState.validate())
                            Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>category(value: value,),)
                            );
                          },
                          child: Text("Start Quiz",style:
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          ),),
                          color: Colors.redAccent,
                          textColor: Colors.white,
                        )
                    ),
                  ],
                ),
              ),
            ),
    ]),
    )
    )
    )
    )
    ]),
      )
    );
  }
}
class BgImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://cdn.pixabay.com/photo/2017/04/22/10/44/camera-2251051__340.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.2),
      colorBlendMode: BlendMode.darken,
    );
  }
}