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
      appBar: AppBar(title: Text("My Form"),
      backgroundColor: Colors.black,),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
        child: Form(
        key: myFormKey,
        child: Column(
          children: <Widget>[
            Padding(                               /* Name*/
                padding: EdgeInsets.all(5.0),
            child :
            TextFormField(
              validator: (String msg) {
                if (msg.isEmpty) {
                  return "Please Enter Name";
      }if (msg.length<3){
                  return "Name is less than 3 char";
                }
                return null;
      },
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                hintText: "Enter Your Name",
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





            Padding(                         /*Mobile Number*/
              padding: EdgeInsets.all(5.0),
              child :
              TextFormField(
                keyboardType: TextInputType.phone,
                  validator: (String msg) {
                    if (msg.isEmpty) {
                      return "Please Enter Your Mobile Number";
                    }if (msg.length!=10){
                      return "Please Enter Valid Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Mobile No.",
                      labelStyle: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
                      hintText: "Enter Your Mobile Number",
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
         onPressed: () {
        myFormKey.currentState.validate();
         },
        )
    );
}
}


