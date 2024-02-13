import 'package:bmi/bottombutton.dart';
import 'package:bmi/brain.dart';
import 'package:bmi/main.dart';
import 'package:bmi/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class Result extends StatefulWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const Result(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColour,
        title: Text(
          "Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: klabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    widget.bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    widget.interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTab: () {
                Navigator.pop(context);
              },
              buttonTitle: "Re-calculate")
        ],
      ),
    );
  }
}
