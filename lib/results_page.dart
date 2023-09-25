import "package:bmi/constant.dart";
import "package:flutter/material.dart";
import "package:bmi/Reuseable_card.dart";
import "bottomButton.dart";

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("BMI CALCULATOR"),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: Color(activColor),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Normal",
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "18.3",
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Your BMI result is quite low, you should eat more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26.0),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              text: "Re-Calculate",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
