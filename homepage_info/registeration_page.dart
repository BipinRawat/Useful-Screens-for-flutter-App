import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyForm()
      )
  );
}
class MyForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}
class MyFormState extends State<MyForm>  {
  var myFormKey = GlobalKey<FormState>();
  var _Password=TextEditingController();
  var _confirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Registration Page"),
          backgroundColor: Colors.black,),
        body:
        SingleChildScrollView(
          child: Container(

            padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
            child: Card(
              color: Colors.white,
              child: Form(
                  key: myFormKey,
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                  child: Image.network("https://res-2.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/v1491391747/atxlmkwempkziue1gyrc.png",fit: BoxFit.cover,)
              ),
                      Padding(                               /*First Name*/
                          padding: EdgeInsets.all(5.0),
                          child :
                          TextFormField(
                              validator: (String msg) {
                                if (msg.isEmpty) {
                                  return "Please Enter First Name";
                                }if (msg.length<3){
                                  return "Name is less than 3 char";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  labelText: "First Name",
                                  labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                                  hintText: "Enter Your First Name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(1.0)
                                  )
                              )
                          ),
                        ),
                      Padding(                               /*Last Name*/
                        padding: EdgeInsets.all(5.0),
                        child :
                        TextFormField(
                            validator: (String msg) {
                              if (msg.isEmpty) {
                                return "Please Enter Last Name";
                              }if (msg.length<3){
                                return "Name is less than 3 char";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                labelText: "Last Name",
                                labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                                hintText: "Enter Your Last Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0)
                                )
                            )
                        ),
                      ),


                      Padding(                               /* email*/
                        padding: EdgeInsets.all(5.0),
                        child :
                        TextFormField(
                            validator: (String msg) {
                              if (msg.isEmpty) {
                                return "Please Enter email";
                              }if (msg.length<3){
                                return "Email is less than 3 char";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                                hintText: "Enter Your Mail Id",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0)
                                )
                            )
                        ),
                      ),
                      Padding(                           /* Passwword*/
                        padding: EdgeInsets.all(5.0),
                        child :
                        TextFormField(
                            controller: _Password,
                            validator: (String msg) {
                              if (msg.isEmpty) {
                                return "Please Enter Password";
                              }if (msg.length<3){
                                return "Name is less than 3 char";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                                hintText: "Enter Your Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0)
                                )
                            )
                        ),
                      ),
                      Padding(                           /* Confirm Passwword*/
                        padding: EdgeInsets.all(5.0),
                        child :
                        TextFormField(
                            controller: _confirmPassword,
                            validator: (String msg) {
                              if (msg!=_Password.value.text) {
                                return "Please Enter Same Password";
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Confirm Password",
                                labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                                hintText: "Enter Your Password Again",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0)
                                )
                            )
                        ),
                      ),
                    ],)
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.done),
          onPressed: () {
            myFormKey.currentState.validate();
          },
        )
    );
  }
}