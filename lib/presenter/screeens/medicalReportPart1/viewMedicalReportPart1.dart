import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/medicalReportPart1/views/viewMedicalReportPart1Body.dart';

class ViewMedicalReportPart1 extends StatelessWidget {
  const ViewMedicalReportPart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          height: 910,

              child: ViewMedicalReportPart1Body(),

      ),
    );
  }
}
