import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReuseableCard(
                    color: Color(0xFF1D1e33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: Color(0xFF1D1e33),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: Color(0xFF1D1e33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: Color(0xFF1D1e33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: Color(0xFF1D1e33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
