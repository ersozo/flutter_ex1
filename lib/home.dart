import 'package:flutter/material.dart';
import 'recard.dart';
import 'constants.dart';
import 'daily.dart';

enum Selection {
  daily,
  weekly,
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Selection selectTask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TAKE NOTE',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ReCard(
                cardTap: () {
                  setState(() {
                    selectTask = Selection.daily;
                  });
                },
                cardColor: selectTask == Selection.daily
                    ? kActiveCardColour
                    : kInactiveCardColour,
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'DAILY',
                      style: kLabelTextSize,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Daily();
                          }));
                        });
                      },
                      child: Icon(
                        Icons.note_add,
                        size: kNoteIconSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ReCard(
              cardTap: () {
                setState(() {
                  selectTask = Selection.weekly;
                });
              },
              cardColor: selectTask == Selection.weekly
                  ? kActiveCardColour
                  : kInactiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WEEKLY',
                    style: kLabelTextSize,
                  ),
                  Icon(
                    Icons.note_add,
                    size: kNoteIconSize,
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
