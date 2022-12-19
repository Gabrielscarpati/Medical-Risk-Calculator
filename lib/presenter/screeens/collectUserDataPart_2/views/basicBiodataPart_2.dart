import 'package:flutter/material.dart';
import 'package:health_status/providers/collectUserDataProvider.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:numberpicker/numberpicker.dart';
import '../../../components/sliderBarWidget.dart';
import 'package:provider/provider.dart';

import '../../collectUserData_3/components/greenTextScreenCollectUserData.dart';
import '../../collectUserData_3/components/greyTextScreenCollectUserData.dart';
import '../../collectUserData_3/components/widgetsCollectUserData.dart';

class BasicBiodataPart_2 extends StatefulWidget {
  const BasicBiodataPart_2({Key? key}) : super(key: key);

  @override
  State<BasicBiodataPart_2> createState() => _BasicBiodataPart_2();
}

class _BasicBiodataPart_2 extends State<BasicBiodataPart_2> {
  @override
  Widget build(BuildContext context) {

    CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();
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
                      _Provider.changeMesureSystem_2();

                      if(_Provider.currentMesureSystem_2 ==0.0){
                        _Provider.getHeightValue(heightValue: ((_Provider.currentValueHeight*3.28084)/100)~/1);
                      }
                      if(_Provider.currentMesureSystem_2 ==1.0){
                        _Provider.getWeightValue(weightValue: _Provider.currentValueWeight~/2.204623);
                      }

                     },
                    onDoubleTap: (){},
                    onSwipe: (){print('');},
                    onChanged: (bool position){
                      print("Switch $position");
                    }
                ),
              ),
              SizedBox(height: heightBetweenWidgets-5,),


              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const GreenTextScreenCollectUserData(
                        text: "Height",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Column(
                        children: [


                          NumberPickerHeight( currentSliderValue: _Provider.currentValueHeight, currentSliderValueDecimal: _Provider.currentValueHeightDecimal,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          _Provider.currentMesureSystem_2 == 1
                              ? ShowSliderValue(text: _Provider.currentValueHeight.toStringAsFixed(0)+ "." +_Provider.currentValueHeightDecimal.toStringAsFixed(0)+' Cm',)
                          :ShowSliderValue(text: _Provider.currentValueHeight.toStringAsFixed(0)+ " Ft " +_Provider.currentValueHeightDecimal.toStringAsFixed(0)+' In',),

                          SizedBox(height: 8),
                          Row(
                            children: [
                              SizedBox(width: 38),
                              Text("Minimum value: 0"),
                            ],
                          ),
                          SizedBox(height: 8,),

                          Row(
                            children: [
                              SizedBox(width: 38,),
                              Text("Minimum value: 100"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: heightBetweenWidgets-5,),

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const GreenTextScreenCollectUserData(
                        text: "Weight",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Column(
                        children: [

                          NumberPickerWeight( currentSliderValue: _Provider.currentValueWeight, currentSliderValueDecimal: _Provider.currentValueWeightDecimal,),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          _Provider.currentMesureSystem_2 == 1
                              ?ShowSliderValue(text: _Provider.currentValueWeight.toStringAsFixed(0)+ "." +_Provider.currentValueWeightDecimal.toStringAsFixed(0)+' Kg',)
                              :ShowSliderValue(text: _Provider.currentValueWeight.toStringAsFixed(0) + "." +_Provider.currentValueWeightDecimal.toStringAsFixed(0)+' Lb',),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              SizedBox(width: 38,),
                              Text("Minimum value: 0"),
                            ],
                          ),
                          SizedBox(height: 8,),

                          Row(
                            children: [
                              SizedBox(width: 38,),
                              Text("Minimum value: 100"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: heightBetweenWidgets-5,),
            ],
          )
        ),
      ),
    );
  }
}



/*
              _Provider.currentMesureSystem == 1?
              Column(
                children: [
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


                              Text(" (Ft/In)" ),
                            ],
                          ),

                          SliderContainerHeight(maxValue: 240, minValue: 40, textMaxValue: "7'"+'10"', textMinValue: "1'" +'3"', currentSliderValue: _Provider.currentSliderValueHeight,),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                    width: 170,
                    child: Material(
                      elevation: 8,
                      shadowColor: Colors.grey[100],
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      child:Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child:  Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text("${(_Provider.currentSliderValueHeight~/30.48).toStringAsFixed(0)}'", style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                              ),

                              SizedBox(width: 4,),


                              Text('${( (_Provider.currentSliderValueHeight-(_Provider.currentSliderValueHeight~/30.48)*30.48)~/2.54).toStringAsFixed(0)}"', style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: heightBetweenWidgets,),
                ],
              )

              :Column(
                children: [
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
                              Text(" (Cm)"),
                            ],
                          ),
                          SliderContainerHeight(maxValue: 240, minValue: 40, textMaxValue: '240', textMinValue: '40', currentSliderValue: _Provider.currentSliderValueHeight,),

                        ],
                      ),
                    ],
                  ),

                  ShowSliderValue(text: _Provider.currentSliderValueHeight.toStringAsFixed(2),),

                  SizedBox(height: heightBetweenWidgets,),

                ],
              ),


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
                        maxValue: 100,
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
          )*/









