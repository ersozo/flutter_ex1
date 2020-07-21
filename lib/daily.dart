import 'package:flutter/material.dart';
import 'package:takenote/constants.dart';
import 'task1.dart';

class Daily extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DAILY TASKS',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Task1()));
                  },
                  child: Text('TASK 1', style: kDailyTextSize),
                ),
              ),
              Expanded(child: Text('TASK 2', style: kDailyTextSize)),
              Expanded(child: Text('TASK 3', style: kDailyTextSize)),
              Expanded(child: Text('TASK 4', style: kDailyTextSize)),
              Expanded(child: Text('TASK 5', style: kDailyTextSize)),
            ],
          ),
        ),
      ),
    );
  }
}
