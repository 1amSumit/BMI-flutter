import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "Reuseable_card.dart";
import "IconData.dart";

const bottomContainerHeight = 100.0;
const activColor = 0xFF1D1E33;
const inActiveColor = 0xFF111328;
const bottomContainerColor = 0xFFEB1555;

// enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int maleCardColor = inActiveColor;
  int femaleCardColor = inActiveColor;

  String seletedGender = "";

  void updateColor(String gender) {
    seletedGender = gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor("male");
                      });
                    },
                    child: ReuseableCard(
                      color: Color(
                          seletedGender == "male" ? activColor : inActiveColor),
                      cardChild: GenderCard(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor("female");
                      });
                    },
                    child: ReuseableCard(
                      color: Color(seletedGender == "female"
                          ? activColor
                          : inActiveColor),
                      cardChild: GenderCard(
                          icon: FontAwesomeIcons.venus, text: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: Color(activColor),
              cardChild: Container(
                child: Text("hallo"),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: Color(activColor),
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: Color(activColor),
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
