 import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MySnackBar(),
    ),

  );
}

  class MySnackBar extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: Text("Snack Bar"),
          ),
          body: Builder(builder: (context) {
            return Center(
              child: RaisedButton(
                  child: Text("Show Snack Bar"),
                  onPressed: () {
                    final snackbar =
                    SnackBar(content: Text("I Am your Snack Bar"),);
                    Scaffold.of(context).showSnackBar(snackbar);
                  }),
            );
          })
      );
    }
}