import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/medicalReportPart1/views/whyMightTheseRisksOccur.dart';
import 'package:health_status/presenter/screeens/medicalReportPart1/views/yourBodyType.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../components/buttonInsideApp.dart';
import '../../medicalReportPart2/viewMedicalReportPart2.dart';
import '../../medicalReportPart2/views/viewMedicalReportPart2Body.dart';
import 'HeathRisks.dart';

class ViewMedicalReportPart1Body extends StatelessWidget {
  const ViewMedicalReportPart1Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children:  [
        Flexible(
          flex: 4,
          child:   UsfAndMedicalReport(),
        ),
        Flexible(
          flex: 7,
          child:  YourBodyType(),
        ),
        Flexible(
          flex: 6,
          child:   HeathRisks(),
        ),
        Flexible(
          flex: 8,
          child: WhyMightTheseRisksOccur(),
        ),
      ],

    );
  }
}
