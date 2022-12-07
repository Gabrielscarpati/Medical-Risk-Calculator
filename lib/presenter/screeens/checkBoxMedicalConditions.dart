import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/collectUserDataProvider.dart';


class CheckBoxMedicalConditions extends StatefulWidget {
  @override
  _CheckBoxMedicalConditionsState createState() => _CheckBoxMedicalConditionsState();
}

class _CheckBoxMedicalConditionsState extends State<CheckBoxMedicalConditions> {

  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    CollectUserDataProvider _provider = context.watch<CollectUserDataProvider>();

    double _screenWidth = MediaQuery.of(context).size.width;
    double division = 1.4;
    double indent = _screenWidth-(_screenWidth/division)-70;
    const Color colorCheck = Color(0xff397f3f);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor:  Color(0xff397f3f),
          iconTheme: IconThemeData(
          ),
          title: Text("Select you medical conditions"),
          leading:  BackButton(
            color: Colors.white,
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),

        ),
        body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: indent,
                      ),
                      Container(
                        width: _screenWidth/division,
                        child: Text(
                          'High blood pressure',
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                      Checkbox(
                        //checkColor: Colors.greenAccent,
                        activeColor: colorCheck,
                        value: _provider.highPressure,
                        onChanged: (bool? value) {
                          setState(() {
                            _provider.highPressure = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Hypertension',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.hypertension,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.hypertension = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Dyslipidemia',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.dyslipidemia,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.dyslipidemia = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Diabetes Type 1',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.diabetes_1,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.diabetes_1 = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,

                      child: Text(
                        'Diabetes Type 2',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.diabetes_2,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.diabetes_2 = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,

                      child: Text(
                        'Coronary heart disease',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.coronaryHeartDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.coronaryHeartDisease = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Stroke',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.stroke,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.stroke = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Osteoarthiritis',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.osteoarthiritis,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.osteoarthiritis = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Gallbladder Disease',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.gallbladderDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.gallbladderDisease = value!;
                        });
                      },
                    ),
                  ],
                ),Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Sleep Apnea',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.sleepApnea,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.sleepApnea = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,

                      child: Text(
                        'Cancer (all types)',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.cancer,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.cancer = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Mental Illnesses',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value: _provider.mentalIllnesses,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.mentalIllnesses = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: indent,
                    ),
                    Container(
                      width: _screenWidth/division,
                      child: Text(
                        'Physical handicaps',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: colorCheck,
                      value:  _provider.physicalHandicaps,
                      onChanged: (bool? value) {
                        setState(() {
                          _provider.physicalHandicaps = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
