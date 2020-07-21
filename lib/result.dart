import 'package:flutter/material.dart';
import 'package:takenote/constants.dart';
import 'package:takenote/recard.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  ResultPage({this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RESULT',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Result = ',
                    style: kLabelTextSize,
                  ),
                  Text(
                    resultText.toUpperCase(),
                    style: kLabelTextSize,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReCard(
                cardChild: Center(
                    child: Text(
                  'RE-CALCULATE',
                  style: kDailyTextSize,
                )),
                cardColor: Colors.orange,
                cardTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
