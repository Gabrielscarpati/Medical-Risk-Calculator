import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';

import '../../collectUserData/components/greyTextScreenCollectUserData.dart';


class VideoExercises extends StatefulWidget {
  const VideoExercises({Key? key}) : super(key: key);
  @override
  State<VideoExercises> createState() => _VideoExercises();
}

class _VideoExercises extends State<VideoExercises> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();
    double screenWidth = MediaQuery.of(context).size.width;
   double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      width: screenWidth,
     // height: screenHeight*0.25,
      child: Padding(
        padding:  EdgeInsets.only(left: 12.0, right: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, top: 0, bottom: 0),
                child: Container(
                  height: screenHeight*0.2,
                  width: screenWidth*.80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.blueGrey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/background.jpeg'),
                          fit: BoxFit.fill
                      )
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
