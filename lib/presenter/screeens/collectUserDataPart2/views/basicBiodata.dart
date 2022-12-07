import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserData/components/greyTextScreenCollectUserData.dart';
import 'package:health_status/providers/collectUserDataProvider.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../../../components/sliderBarWidget.dart';
import 'package:provider/provider.dart';

import '../../collectUserData/components/buttonWithMarginScreenCollectUserData.dart';
import '../../collectUserData/components/greenTextScreenCollectUserData.dart';
import '../../collectUserData/components/widgetsCollectUserData.dart';


class BasicBiodata extends StatefulWidget {
  const BasicBiodata({Key? key}) : super(key: key);

  @override
  State<BasicBiodata> createState() => _BasicBiodata();
}

class _BasicBiodata extends State<BasicBiodata> {
  @override
  Widget build(BuildContext context) {

    CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();
    double heightBetweenFields = 8.0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double heightBetweenWidgets = 16;


    return Container(
      color: Colors.white,
      height: screenHeight-160,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 12.0, top: 4,),
        child: Container(
          child: Column(
            children: [


              Row(
                children: [
                  GreyTextScreenCollectUserData(text: "Basic Biodata"),
                  SizedBox(width: screenWidth*.28,),

                ],
              ),

              SizedBox(height: heightBetweenWidgets,),

              Container(
                height: 44,
                child: LiteRollingSwitch(
                    animationDuration: Duration(milliseconds: 500),
                    width: 280,
                    value: true,
                    textOn: "  Imperial system",textOnColor: Colors.white, textSize: 18,
                    textOff: "  Metric system",
                    colorOn: Colors.green,
                    colorOff: Colors.orangeAccent,
                    iconOn: Icons.change_circle_rounded,
                    iconOff: Icons.change_circle_rounded,
                    onTap: (){
                      _Provider.currentSliderValueWeight =0;
                     _Provider.changeMesureSystem();
                      },
                    onDoubleTap: (){print('');},
                    onSwipe: (){print('');},
                    onChanged: (bool position){
                      print("Switch $position");
                    }
                ),
              ),
              SizedBox(height: heightBetweenWidgets-5,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GreenTextScreenCollectUserData(
                            text: "Chest Circunference",
                          ),
                          Text(_Provider.currentMesureSystem == 0.0? " (Cm)": " (In)" ),
                        ],
                      ),
                      SliderContainerChest(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueChest,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueChest.toStringAsFixed(2),),

              /*ChestCircunference(
                nameController: _Provider.chestCircumferenceController,
                hint: 'In centimeters',),*/
              SizedBox(height: heightBetweenWidgets,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GreenTextScreenCollectUserData(
                            text: "Waist Circunference",
                          ),
                          Text(_Provider.currentMesureSystem == 0.0? " (Cm)": " (In)" ),
                        ],
                      ),
                     SliderContainerWaist(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueWaist,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueWaist.toStringAsFixed(2),),
              /* ChestCircunference(
                nameController: _Provider.waistCircumferenceController,
                hint: 'In centimeters',),*/
              SizedBox(height: heightBetweenWidgets,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GreenTextScreenCollectUserData(
                            text: "Hip Circunference",
                          ),

                          Text(_Provider.currentMesureSystem == 0.0? " (Cm)": " (In)" ),
                        ],
                      ),
                     SliderContainerHip(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueHip,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text:_Provider.currentSliderValueHip.toStringAsFixed(2),),
              /*ChestCircunference(
                nameController: _Provider.hipSize,
                hint: 'In centimeters',),*/
              SizedBox(height: heightBetweenWidgets,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GreenTextScreenCollectUserData(
                            text: "Height",
                          ),
                          Text(_Provider.currentMesureSystem == 0.0? " (Cm)": " (Ft/In)" ),
                        ],
                      ),
                     SliderContainerHeight(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueHeight,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueHeight.toStringAsFixed(2),),

              /* ChestCircunference(
                nameController: _Provider.heightController,
                hint: 'In centimeters',),*/
              SizedBox(height: heightBetweenWidgets,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GreenTextScreenCollectUserData(
                            text: "Weight",
                          ),
                          Text(_Provider.currentMesureSystem == 0.0? " (Kg)": " (Lb)" ),
                        ],
                      ),
                      SliderContainerWeight(
                        maxValue: _Provider.currentMesureSystem == 0.0? 100: 200,
                        minValue: 0,
                        textMaxValue: _Provider.currentMesureSystem == 0.0? '100': '200',
                        textMinValue: '0',
                        currentSliderValue: _Provider.currentMesureSystem == 0.0? _Provider.currentSliderValueWeight*2: _Provider.currentSliderValueWeight ,
                      ),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueWeight.toStringAsFixed(2),),

              /* ChestCircunference(
                nameController: _Provider.weightController,
                hint: 'In centimeters',),*/
            ],
          )
        ),
      ),
    );
  }
}
