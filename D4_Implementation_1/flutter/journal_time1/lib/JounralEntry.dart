import 'package:flutter/material.dart';
import 'Day.dart';
import 'package:intl/intl.dart';

class JournalEntry extends StatelessWidget {
  DateTime choiceDay;
  String journalText;
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

  @override
  Widget build(BuildContext context) {
    final int maxLine = 30;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(formatDate()),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
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
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Return to Journal Page'),
              ),
              SizedBox(
                width: 20,
              ),
              RaisedButton(
                onPressed: () {
                  print(journalText);
                  Route route = MaterialPageRoute(
                    builder: (context) => Day(
                        choiceDay: choiceDay, journalText: myController.text),
                  );
                  Navigator.push(context, route);
                },
                child: Text('Save Entry'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
