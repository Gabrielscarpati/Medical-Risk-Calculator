import 'package:flutter/material.dart';
import '../../../../providers/collectUserDataProvider.dart';
import 'package:provider/provider.dart';


class GenderEthnicity extends StatefulWidget {
  const GenderEthnicity({Key? key}) : super(key: key);


  @override
  State<GenderEthnicity> createState() => _GenderEthnicity();
}

class _GenderEthnicity extends State<GenderEthnicity> {
  @override
  Widget build(BuildContext context) {
        CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();
        String? dropdownValueGender = _Provider.listGender.first;
        String dropdownValueEthnicity = _Provider.listEthnicity.first;

        double heightBetweenFields = 8.0;
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

        return Container(
          width: screenWidth-32,
          height: 136,
          child: Padding(
            padding:  EdgeInsets.only(right: 12.0, left: 12.0, bottom: 12.0),
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      ),

                  child: Padding(
                    padding: const EdgeInsets.only(right: 8,left: 8),
                      child: DropdownButton<String>(
                        borderRadius:  BorderRadius.circular(12.0),
                        underline: SizedBox(),
                        value: dropdownValueGender,
                        isExpanded: true,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),

                      onChanged: (value) {
                       print(value);
                        setState(() {
                          dropdownValueGender = value;
                        });
                      },

                      items: _Provider.listGender.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                  Card(
                    elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8,left: 8),
                      child: DropdownButton<String>(
                        borderRadius:  BorderRadius.circular(12.0),
                        underline: SizedBox(),
                        isExpanded: true,
                        value: dropdownValueEthnicity,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),

                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValueEthnicity = value!;
                          });
                        },
                        items: _Provider.listEthnicity.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
