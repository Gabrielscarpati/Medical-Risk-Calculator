import 'package:flutter/material.dart';
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
            divisions: 100,
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
