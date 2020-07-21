import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'Day.dart';



class JournalEntry extends StatelessWidget {
  DateTime choiceDay;
  String journalText;
  File image;
  final myController = TextEditingController();

  JournalEntry({this.choiceDay, this.journalText});

  String formatDate() {
    DateFormat formatter = DateFormat('LLLL d, y');
    String formatted = formatter.format(choiceDay);
    return '$formatted';
  }

  void dispose() {
    myController.dispose();
  }


  Widget textBox() {
    final int maxLine = 30;
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
      height: maxLine * 8.0,
      child: TextField(
        controller: myController,
        keyboardType: TextInputType.multiline,
        maxLines: maxLine,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Journal Time',
        ),
      ),
    );
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
          onTap: (){
            print('test');
          },
          child: Container(
          color: Colors.grey[400],
          child: Icon(FontAwesomeIcons.camera),
          ),
        ),
        GestureDetector(
          onTap: (){
            print('test');
          },
          child: Container(
            color: Colors.grey[400],
            child: Icon(FontAwesomeIcons.camera),
          ),
        ),
        GestureDetector(
          onTap: (){
            print('test');
          },
          child: Container(
            color: Colors.grey[400],
            child: Icon(FontAwesomeIcons.camera),
          ),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(formatDate()),
      ),
      body: Column(
        children: <Widget>[
          textBox(),
          imageGrid(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Route route = MaterialPageRoute(
          builder: (context) => Day(
              choiceDay: choiceDay, journalText: myController.text),
          );
        Navigator.push(context, route);
        },
        label: Text('Save'),
        icon: Icon(FontAwesomeIcons.save),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
