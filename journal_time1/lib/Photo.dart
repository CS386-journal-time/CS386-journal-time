import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  @override
  _Photo createState() => _Photo();
}

class _Photo extends State<Photo> {
  File _image;
  final picker = ImagePicker();

  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Widget imageGrid() {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        GestureDetector(
          child: Container(
            color: Colors.grey[400],
            child: _image == null
                ? Icon(FontAwesomeIcons.camera)
                : Image.file(_image),
          ),
          onTap: (){
            getImageGallery();
          },
        ),
        GestureDetector(
          child: Container(
            color: Colors.grey[400],
            child: _image == null
                ? Icon(FontAwesomeIcons.camera)
                : Image.file(_image),
          ),
          onTap: (){
            getImageGallery();
          },
        ),
        GestureDetector(
          child: Container(
            color: Colors.grey[400],
            child: _image == null
                ? Icon(FontAwesomeIcons.camera)
                : Image.file(_image),
          ),
          onTap: (){
            getImageGallery();
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}