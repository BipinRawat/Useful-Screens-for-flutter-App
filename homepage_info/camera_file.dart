import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState  createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
  File _image;

  getImageFile(ImageSource source) async {
    var image = await ImagePicker.pickImage(source: source);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image | Camera"),
      ),
      body: Center(
        child: _image == null ? Text("Image") : Image.file(_image,
        height: 200,
        width: 200,
        ),
      ),
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      FloatingActionButton.extended(
    label : Text("Camera"),
    onPressed : () => getImageFile(ImageSource.camera),
    heroTag : UniqueKey(),
    icon : Icon(Icons.camera),
    ),
      SizedBox(
        width: 20,
      ),
      FloatingActionButton.extended(
        label: Text("Gallery"),
          onPressed: () => getImageFile(ImageSource.gallery),
          heroTag: UniqueKey(),
          icon: Icon(Icons.photo_library),
      )],
      ),
    );
  }
  }