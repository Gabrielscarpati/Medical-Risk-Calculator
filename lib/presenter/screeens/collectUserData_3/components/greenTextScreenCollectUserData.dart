import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenTextScreenCollectUserData extends StatelessWidget {
  final String text;
  const GreenTextScreenCollectUserData({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: 16,
        color: Colors.green[700],
        fontWeight: FontWeight.bold
      ),
    );
  }
}
