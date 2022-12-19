import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../../checkBoxMedicalConditions.dart';
import '../components/buttonWithMarginScreenCollectUserData.dart';
import '../components/greenTextScreenCollectUserData.dart';
import '../../../components/sliderBarWidget.dart';
import '../components/greyTextScreenCollectUserData.dart';
import 'package:provider/provider.dart';

import '../components/widgetsCollectUserData.dart';

class AgeMedicalConditions extends StatefulWidget {
  const AgeMedicalConditions({Key? key}) : super(key: key);


  @override
  State<AgeMedicalConditions> createState() => _AgeMedicalConditions();
}

class _AgeMedicalConditions extends State<AgeMedicalConditions> {
  @override
  Widget build(BuildContext context) {
    //watch
    CollectUserDataProvider _provider = context.watch<CollectUserDataProvider>();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      //color: Colors.blue,
      width: screenWidth,
      height:258,

        child: Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 12.0,bottom: 6.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0, top: 0, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    GreyTextScreenCollectUserData(text: 'General Information',),
                  ],
                ),
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        GreenTextScreenCollectUserData(
                          text: "Age",
                        ),
                        SliderContainerAge(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _provider.currentSliderValueAge,),

                      ],
                    ),
                  ],
                ),
              SizedBox(height: 12,),
              ShowSliderValue(text: _provider.currentSliderValueAge.toStringAsFixed(2),),
             /* AgeController(
                nameController: _provider.ageController,
                hint: 'In years',),*/

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(children: [
                    GreenTextScreenCollectUserData(
                      text: "Any Medical Conditions?",
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 38,
                      width: 90,
                      child: LiteRollingSwitch(
                        animationDuration: Duration(milliseconds: 450),
                        width: 72,
                          value: false,
                          textOn: "on",
                          textOff: "off",
                          colorOn: Colors.green,
                          colorOff: Colors.redAccent,
                          iconOn: Icons.check_outlined,
                          iconOff: Icons.clear,
                          onTap: (){
                            _provider.changeMedicalConditions();
                          },
                          onDoubleTap: (){print('');},
                          onSwipe: (){print('');},
                          onChanged: (bool position){
                            print("Switch $position");
                          }
                      ),
                    )
                  ],),
                ],
              ),
              SizedBox(height: 20,),

              _provider.medicalConditions == 0
              ? Text("")
              : ButtonWithMarginScreenCollectUserData(
                text: 'List your Medical Conditions',
                goNextScreen: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CheckBoxMedicalConditions()),
                  );

                },
                  //ViewCollectUserDataPart2
              ),

          ],
        ),
        ),
      ),
    );
  }
}
