import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/medicalReportPart1/views/whyMightTheseRisksOccur.dart';
import 'package:health_status/presenter/screeens/medicalReportPart2/views/foodsToAvoid.dart';
import 'package:health_status/presenter/screeens/medicalReportPart2/views/whatToDoShape.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'VideoExercises.dart';

class ViewMedicalReportPart2Body extends StatelessWidget {
  const ViewMedicalReportPart2Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoundedLoadingButtonController controller = RoundedLoadingButtonController();
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Flex(
              direction: Axis.vertical,
              children:  [
                Flexible(
                  flex: 4,
                  child:   UsfAndMedicalReport(),
                ),
                Flexible(
                  flex: 10,
                  child:   WhatToDoShape(),
                ),
                Flexible(
                  flex: 8,
                  child:   VideoExercises(),
                ),
                Flexible(
                  flex: 8,
                  child:   FoodsToAvoid(),
                ),
        ],
      ),
    );
  }
}

class UsfAndMedicalReport extends StatelessWidget {
  const UsfAndMedicalReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      //height: screenHeight*.15,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("USF Microbiome Center", style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                ), ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Medical Report", style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ), ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


