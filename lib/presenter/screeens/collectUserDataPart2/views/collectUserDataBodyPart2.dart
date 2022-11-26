import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../../../components/buttonInsideApp.dart';
import '../../collectUserData/views/ageMedicalConditions.dart';
import '../../collectUserData/views/genderEthnicity.dart';
import '../../collectUserData/views/imageBodyType.dart';
import '../../medicalReportPart1/viewMedicalReportPart1.dart';
import 'basicBiodata.dart';
import 'package:provider/provider.dart';

class CollectUserDataBodyPart2 extends StatelessWidget {
  const CollectUserDataBodyPart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    RoundedLoadingButtonController controller = RoundedLoadingButtonController();
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
              children:  [
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
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Medical Risk Calculator", style: TextStyle(
                          color: Colors.black,
                           fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ), ),
                    ],
                  ),
                ),
               // Expanded(
                BasicBiodata(),
                ButtonInsideApp(
                  buttonText: 'Generate report',
                  goNextScreen: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ViewMedicalReportPart1()),
                    );
                  },
                  controller: controller,)
        ],
      ),
    );
  }
}
