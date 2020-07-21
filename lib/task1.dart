import 'package:flutter/material.dart';
import 'package:takenote/constants.dart';
import 'package:takenote/recard.dart';
import 'recard.dart';
import 'result.dart';
import 'calc_brain.dart';

class Task1 extends StatefulWidget {
  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int myWeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TASK 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              'WEIGHT',
              style: kLabelTextSize,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              myWeight.toString(),
              style: kSliderNumStyle,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                overlayColor: Colors.yellow,
                overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                thumbColor: Colors.red,
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 20.0,
                )),
            child: Slider(
              value: myWeight.toDouble(),
              min: 5.0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  myWeight = newValue.round();
                });
              },
            ),
          ),
          SizedBox(
            height: 200,
          ),
          ReCard(
            cardColor: kActiveCardColour,
            cardTap: () {
              CalcBrain myCalc = CalcBrain(
                weight: myWeight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    resultText: myCalc.getResult(),
                  );
                }),
              );
            },
            cardChild: Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'CALCULATE',
                style: kDailyTextSize,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
