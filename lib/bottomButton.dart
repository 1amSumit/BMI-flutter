import "package:flutter/material.dart";
import "constant.dart";

class BottomButton extends StatelessWidget {
  const BottomButton({required this.text, @required this.onTap});

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(bottomContainerColor),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                letterSpacing: 4.0),
          ),
        ),
      ),
    );
  }
}
