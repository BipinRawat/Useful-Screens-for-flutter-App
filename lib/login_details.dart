import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
runApp(
  MaterialApp(
    title: "Awesome App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  )
);
}
class BgImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/loginbg.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
LoginPageState createState() => LoginPageState();
  }

class LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[
        Text("Login Page",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
    ]),
    ),

      body: Stack(
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
                      Form(child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",labelText: "Username",
                                  labelStyle:TextStyle(fontWeight: FontWeight.w900)
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  labelStyle:TextStyle(fontWeight: FontWeight.w900)
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text("Sign In"),
                            color: Colors.deepOrange,
                            textColor: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}