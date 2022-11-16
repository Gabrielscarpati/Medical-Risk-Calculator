import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../components/buttonWithMarginScreenCollectUserData.dart';
import '../components/greenTextScreenCollectUserData.dart';
import '../../../components/sliderBarWidget.dart';
import '../components/greyTextScreenCollectUserData.dart';
import 'package:provider/provider.dart';


class AgeMedicalConditions extends StatefulWidget {
  const AgeMedicalConditions({Key? key}) : super(key: key);


  @override
  State<AgeMedicalConditions> createState() => _AgeMedicalConditions();
}

class _AgeMedicalConditions extends State<AgeMedicalConditions> {
  @override
  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      width: screenWidth*.72,
      height: 164,
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
                  children: const [
                    GreyTextScreenCollectUserData(text: 'General Information',),
                  ],
                ),
              ),
              Row(
                children: [
                  GreenTextScreenCollectUserData(
                    text: "Age",
                  ),
                  SizedBox(width:8 ,),
                  BrightnessSliderContainer(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueAge,),
                ],
              ),
              SizedBox(height: 8,),
              Row(children: [
                GreenTextScreenCollectUserData(
                  text: "Any Medical Conditions?",
                ),
                SizedBox(width: 4,),
                Container(
                  height: 30,
                  width: 72,
                  child: LiteRollingSwitch(
                    width: 72,
                      value: true,
                      textOn: "on",
                      textOff: "off",
                      colorOn: Colors.green,
                      colorOff: Colors.redAccent,
                      iconOn: Icons.check_outlined,
                      iconOff: Icons.clear,
                      onTap: (){print('');},
                      onDoubleTap: (){print('');},
                      onSwipe: (){print('');},
                      onChanged: (bool position){
                        print("Switch $position");
                      }
                  ),
                )
              ],),
              SizedBox(height: 8,),

              ButtonWithMarginScreenCollectUserData(
                text: 'Medical Conditions',
              ),

          ],
        ),
        ),
      ),
    );
  }
}
