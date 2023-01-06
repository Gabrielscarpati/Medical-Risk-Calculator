import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpTermsAndConditions extends StatelessWidget {
  const PopUpTermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Accept terms and conditions\nto Sign Up!',
        textAlign: TextAlign.center ,
        style: TextStyle(color: Color(0xff397f3f),
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.of(context).pop(),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff397f3f),
                    Color(0xff397f3f),
                    Color(0xff397f3f)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: 350.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                'Ok',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
