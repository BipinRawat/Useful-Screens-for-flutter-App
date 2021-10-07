import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome To Home Page"),
      ),
    );
  }
}
  class Aboutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: Center(
  child: Text("About Page Data"),
  ),
  );
  }
  }

  class Servicespage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
            child: Text("Services Page Data"),
          )
      );
    }
  }