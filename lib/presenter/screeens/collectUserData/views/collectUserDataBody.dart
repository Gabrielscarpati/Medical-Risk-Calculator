import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../../../components/buttonInsideApp.dart';
import '../../medicalReportPart1/viewMedicalReportPart1.dart';
import 'ageMedicalConditions.dart';
import 'basicBiodata.dart';
import 'genderEthnicity.dart';
import 'imageBodyType.dart';
import 'package:provider/provider.dart';


class CollectUserDataBody extends StatelessWidget {
  const CollectUserDataBody({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(left: 12, top: 20),
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
                  Container(
                    child: Column(children: [
                      Row(children: const [
                        AgeMedicalConditions(),
                        SizedBox(
                          height: 4,
                        ),
                        Expanded(child: GenderEthnicity()),
                      ],
                      ),
                    ],),
                  ),
                Divider(height: 2, color: Colors.grey, thickness: 2,),
                BasicBiodata(),
                Divider(height: 2, color: Colors.grey, thickness: 2,),
                ImageBodyType(),
                SizedBox(height: 8,),
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
