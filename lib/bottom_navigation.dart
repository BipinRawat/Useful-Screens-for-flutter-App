import 'package:flut_app/sample_pages.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      title: "Bottom App Menu",
      home: BottomMenu(),
    ));
}
class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget>createState(){
    return _BottomMenuState();
  }
}
class _BottomMenuState extends State<BottomMenu> {
  var _pagesdata = [Homepage(),Aboutpage(),Servicespage()];
  int _selectedItem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom App Menu")),
      body: Center(
        child: _pagesdata[_selectedItem],
      ),
        bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.info),label: "About"),
    BottomNavigationBarItem(icon: Icon(Icons.design_services),label: "Services")
    ],
          currentIndex: _selectedItem,
          onTap: (setValue){
          setState(() {
            _selectedItem = setValue;
        });
        },
    ),
    );
  }
}
