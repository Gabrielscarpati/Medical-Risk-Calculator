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




class NumberPickerChestMetricSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerChestMetricSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerChestMetricSystemState createState() => _NumberPickerChestMetricSystemState();
}

class _NumberPickerChestMetricSystemState extends State<NumberPickerChestMetricSystem> {
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
           // PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 50,
                    maxValue: 250,
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
                    maxValue: 99,
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

class NumberPickerChestImperialSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerChestImperialSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerChestImperialSystemState createState() => _NumberPickerChestImperialSystemState();
}

class _NumberPickerChestImperialSystemState extends State<NumberPickerChestImperialSystem> {
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
           // PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 20,
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
                    maxValue: 99,
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


class NumberPickerWaistMetricSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWaistMetricSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWaistMetricSystemState createState() => _NumberPickerWaistMetricSystemState();
}

class _NumberPickerWaistMetricSystemState extends State<NumberPickerWaistMetricSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 50,
                    maxValue: 250,
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
                    maxValue: 99,
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

class NumberPickerWaistImperialSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWaistImperialSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWaistImperialSystemState createState() => _NumberPickerWaistImperialSystemState();
}

class _NumberPickerWaistImperialSystemState extends State<NumberPickerWaistImperialSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 20,
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
                    maxValue: 99,
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



class NumberPickerHipMetricSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHipMetricSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHipMetricSystemState createState() => _NumberPickerHipMetricSystemState();
}

class _NumberPickerHipMetricSystemState extends State<NumberPickerHipMetricSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 50,
                    maxValue: 250,
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
                    maxValue: 99,
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

class NumberPickerHipImperialSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHipImperialSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHipImperialSystemState createState() => _NumberPickerHipImperialSystemState();
}

class _NumberPickerHipImperialSystemState extends State<NumberPickerHipImperialSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 20,
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
                    maxValue: 99,
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



class NumberPickerHeightMetricSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHeightMetricSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHeightMetricSystemState createState() => _NumberPickerHeightMetricSystemState();
}

class _NumberPickerHeightMetricSystemState extends State<NumberPickerHeightMetricSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 120,
                    maxValue: 240,
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
                    maxValue: 99,
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

class NumberPickerHeightImperialSystem extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerHeightImperialSystem({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerHeightImperialSystemState createState() => _NumberPickerHeightImperialSystemState();
}

class _NumberPickerHeightImperialSystemState extends State<NumberPickerHeightImperialSystem> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 4,
                    maxValue: 7,
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
                    maxValue: 12,
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



class NumberPickerWeightMetric extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWeightMetric({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWeightMetricState createState() => _NumberPickerWeightMetricState();
}

class _NumberPickerWeightMetricState extends State<NumberPickerWeightMetric> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 25,
                    maxValue: 250,
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
                    maxValue: 99,
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

class NumberPickerWeightimperial extends StatefulWidget {
  int currentSliderValue;
  int currentSliderValueDecimal;
  NumberPickerWeightimperial({
    Key? key,
    required this.currentSliderValue,
    required this.currentSliderValueDecimal,
  }) : super(key: key);

  @override
  _NumberPickerWeightimperialState createState() => _NumberPickerWeightimperialState();
}

class _NumberPickerWeightimperialState extends State<NumberPickerWeightimperial> {
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
            //PositionedContainer(spacebetween: spacebetween,),
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
                    minValue: 50,
                    maxValue: 500,
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
                    maxValue: 99,
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

