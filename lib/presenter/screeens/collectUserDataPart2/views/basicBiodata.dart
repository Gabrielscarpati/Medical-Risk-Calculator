import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserData/components/greyTextScreenCollectUserData.dart';
import 'package:health_status/providers/collectUserDataProvider.dart';
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GreenTextScreenCollectUserData(
                        text: "Chest Circunference",
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
                      GreenTextScreenCollectUserData(
                        text: "Waist Circunference",
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
                      GreenTextScreenCollectUserData(
                        text: "Hip Size",
                      ),
                     SliderContainerHip(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueHip,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueHip.toStringAsFixed(2),),
              /*ChestCircunference(
                nameController: _Provider.hipSize,
                hint: 'In centimeters',),*/
              SizedBox(height: heightBetweenWidgets,),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GreenTextScreenCollectUserData(
                        text: "Height",
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
                      GreenTextScreenCollectUserData(
                        text: "Weight",
                      ),
                      SliderContainerWeight(maxValue: 100, minValue: 0, textMaxValue: '100', textMinValue: '0', currentSliderValue: _Provider.currentSliderValueWeight,),

                    ],
                  ),
                ],
              ),
              ShowSliderValue(text: _Provider.currentSliderValueWeight.toStringAsFixed(2),),

              /* ChestCircunference(
                nameController: _Provider.weightController,
                hint: 'In centimeters',),*/


              SizedBox(height: heightBetweenWidgets*2,),
              ButtonWithMarginScreenCollectUserData(
                text: 'Calculate BMI',
              ),
            ],
          )
        ),
      ),
    );
  }
}
