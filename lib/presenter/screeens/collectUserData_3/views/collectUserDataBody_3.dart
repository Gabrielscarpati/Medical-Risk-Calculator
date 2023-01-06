import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_1/viewCollectUserDataPart_1.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../../../../providers/providerFireBase.dart';
import '../../../components/buttonInsideApp.dart';
import '../../medicalReportPart1/viewMedicalReportPart1.dart';
import 'ageMedicalConditions.dart';
import 'genderEthnicity.dart';
import 'imageBodyType.dart';
import 'package:provider/provider.dart';


class CollectUserDataBody_3 extends StatelessWidget {
  const CollectUserDataBody_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();
    final ProviderFireBase _FirebaseProvider = context.watch<ProviderFireBase>();
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
                GenderEthnicity(),
                Divider(height: 2, color: Colors.grey, thickness: 2,),
                ImageBodyType(),
                SizedBox(height: 8,),
                ElevatedButton(
                  onPressed: () async{
                    await _FirebaseProvider.saveDataFirebase();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>  ViewMedicalReportPart1()),
                    );

                  },
                  child: Text("Here"),

                )
        ],
      ),
    );
  }
}

/*ButtonInsideApp(
                  buttonText: 'Continue',
                  goNextScreen: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>  ViewMedicalReportPart1()),
                    );
                  },
                  controller: controller,)*/
