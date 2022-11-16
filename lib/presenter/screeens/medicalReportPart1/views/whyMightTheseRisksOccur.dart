import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../components/buttonInsideApp.dart';
import '../../medicalReportPart2/viewMedicalReportPart2.dart';
import '../components/greyTextScreenCollectUserData.dart';


class WhyMightTheseRisksOccur extends StatefulWidget {
  const WhyMightTheseRisksOccur({Key? key}) : super(key: key);
  @override
  State<WhyMightTheseRisksOccur> createState() => _WhyMightTheseRisksOccur();
}

class _WhyMightTheseRisksOccur extends State<WhyMightTheseRisksOccur> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    RoundedLoadingButtonController controller = RoundedLoadingButtonController();

    return Container(
      color: Colors.white,
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 12.0,bottom: 12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, top: 0, bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GreyTextScreenCollectUserData(text: 'Why might these risks occur',),
                        SizedBox(height: 12,),
                        Column(
                          children: [
                            ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: screenWidth -24,
                                ),
                                child: Container(
                                  //VER PQ TA DANDO ERRO . . .. . .

                                  child: const Text('Apple Body Shape Apple Body Shape Apple Body Shape Apple Body Shapen\n', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  ),
                                )
                            ),
                            

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight/18,
              ),

              ButtonInsideApp(
                  buttonText: 'Next',
                  goNextScreen: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ViewMedicalReportPart2()),

                    );
                  },
                  controller: controller
              )
            ],
          ),
        ),
      ),
    );
  }
}
