import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/medicalReportPart2/views/viewMedicalReportPart2Body.dart';

class ViewMedicalReportPart2 extends StatelessWidget {
  const ViewMedicalReportPart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          height: 910,

              child: ViewMedicalReportPart2Body(),

      ),
    );
  }
}
