import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWithMarginScreenCollectUserData extends StatelessWidget {
  final String text;
  final void Function() goNextScreen;

  const ButtonWithMarginScreenCollectUserData({Key? key,
    required this.text,
    required this.goNextScreen
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 10,
      child: Container(
        height: 42.0,
        width: 240,
        child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black,width: 1.8)
                    )
                )
            ),
          onPressed:goNextScreen,

          child: Text(text,
            style: TextStyle(color:
            Colors.black,
              fontSize: 16,
            ),
          ),
        )
      ),
    );
  }
}