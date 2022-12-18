import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import '../../providers/collectUserDataProvider.dart';

class SliderContainerAge extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerAge({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerAgeState createState() =>  _SliderContainerAgeState ();
}

class  _SliderContainerAgeState  extends State<SliderContainerAge> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    return Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 100,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _Provider.getAgeValue(ageValue: value);
                _Provider.currentSliderValueAge = value;
                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
           Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}




class NumberPickerChest extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerChest({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerChestState createState() => _NumberPickerChestState();
}

class _NumberPickerChestState extends State<NumberPickerChest> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double spacebetween = 24;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            PositionedContainer(spacebetween: spacebetween,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueChest,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getChestValue(chestValue: value);
                        }
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: spacebetween,
                ),
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueChestDecimal,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getChestValueDecimal(chestValueDecimal: value,);
                      }
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


class NumberPickerWaist extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWaist({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWaistState createState() => _NumberPickerWaistState();
}

class _NumberPickerWaistState extends State<NumberPickerWaist> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double spacebetween = 24;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            PositionedContainer(spacebetween: spacebetween,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueWaist,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getWaistValue(waistValue: value);
                        }
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: spacebetween,
                ),
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueWaistDecimal,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                        setState(() {
                          _Provider.getWaistValueDecimal(waistValueDecimal: value);
                        }
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}



class NumberPickerHip extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHip({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHipState createState() => _NumberPickerHipState();
}

class _NumberPickerHipState extends State<NumberPickerHip> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double spacebetween = 24;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            PositionedContainer(spacebetween: spacebetween,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueHip,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getHipValue(hipValue: value);
                        }
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: spacebetween,
                ),
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueHipDecimal,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getHipValueDecimal(hipValueDecimal: value,);
                      }
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}



class NumberPickerHeight extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHeight({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHeightState createState() => _NumberPickerHeightState();
}

class _NumberPickerHeightState extends State<NumberPickerHeight> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double spacebetween = 24;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            PositionedContainer(spacebetween: spacebetween,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueHeight,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getHeightValue(heightValue: value);
                        }
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: spacebetween,
                ),
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueHeightDecimal,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getHeightValueDecimal(heightValueDecimal: value,);
                      }
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}



class NumberPickerWeight extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWeight({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWeightState createState() => _NumberPickerWeightState();
}

class _NumberPickerWeightState extends State<NumberPickerWeight> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    double spacebetween = 24;
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            PositionedContainer(spacebetween: spacebetween,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueWeight,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getWeightValue(weightValue: value);
                        }
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: spacebetween,
                ),
                Container(
                  alignment: Alignment.center,
                  child: NumberPicker(
                    axis: Axis.vertical,
                    itemHeight: 45,
                    itemWidth: 45.0,
                    step: 1,
                    selectedTextStyle: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    itemCount: 3,
                    value: _Provider.currentValueWeightDecimal,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) {
                      setState(() {
                        _Provider.getWeightValueDecimal(weightValueDecimal: value,);
                      }
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


/*

class SliderContainerChest extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerChest({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerChestState createState() => _SliderContainerChestState();
}

class _SliderContainerChestState extends State<SliderContainerChest> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    return  Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 200,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _Provider.getChestValue(chestValue: value);

                _Provider.currentSliderValueChest = value;

                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
            Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}

class SliderContainerWaist extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerWaist({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerWaistState createState() => _SliderContainerWaistState();
}

class _SliderContainerWaistState extends State<SliderContainerWaist> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    return  Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 100,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _Provider.getWaistValue(waistValue: value);

                _Provider.currentSliderValueWaist = value;

                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
            Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}


class SliderContainerHip extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerHip({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerHipState createState() => _SliderContainerHipState();
}

class _SliderContainerHipState extends State<SliderContainerHip> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    return  Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 100,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _Provider.getHipValue(hipValue: value);

                _Provider.currentSliderValueHip = value;

                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
            Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}

class SliderContainerWeight extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerWeight({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerWeightState createState() => _SliderContainerWeightState();
}

class _SliderContainerWeightState extends State<SliderContainerWeight> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();

    return  Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,

            value: _Provider.currentMesureSystem == 0.0? widget.currentSliderValue/2: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,

            divisions: _Provider.currentMesureSystem == 0.0? 100: 200,
            label:  _Provider.currentMesureSystem == 0.0? (widget.currentSliderValue/2).round().toString():widget.currentSliderValue.round().toString(),

            onChanged: (double value) {
              setState(() {
                _Provider.getWeightValue(weightValue: value);

                _Provider.currentSliderValueWeight = value;

                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
            Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}

class SliderContainerHeight extends StatefulWidget {
  final double maxValue;
  final String textMaxValue;
  final double minValue;
  final String textMinValue;
  double currentSliderValue;

  SliderContainerHeight({Key? key, required this.maxValue, required this.minValue, required this.textMaxValue, required this.textMinValue, required this.currentSliderValue}) : super(key: key);

  @override
  _SliderContainerHeightState createState() => _SliderContainerHeightState();
}

class _SliderContainerHeightState extends State<SliderContainerHeight> {
  @override

  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.read<CollectUserDataProvider>();

    return  Stack(
      children: [
        Container(
          width: 260,
          height: 18,
          child: Slider(
            inactiveColor: Colors.grey,
            activeColor: Colors.orangeAccent,
            value: widget.currentSliderValue,
            max: widget.maxValue,
            min: widget.minValue,
            divisions: 100,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _Provider.getHeightValue(heightValue: value);

                _Provider.currentSliderValueHeight = value;

                widget.currentSliderValue = value;

              });
            },
          ),
        ),
        Text(widget.textMinValue),
        Row(
          children: [
            SizedBox(width: 260,),
            Text(widget.textMaxValue),
          ],
        ),
      ],
    );
  }
}
*/


class PositionedContainer extends StatelessWidget {
  final double spacebetween;
  const PositionedContainer({Key? key, required this.spacebetween}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Positioned(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    offset: const Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
              ),
            )
        ),
        SizedBox(
          width: spacebetween-4,
        ),
        Positioned(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                    offset: const Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

