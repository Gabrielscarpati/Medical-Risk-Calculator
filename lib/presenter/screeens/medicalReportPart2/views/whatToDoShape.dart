import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';

import '../../../../providers/collectUserDataProvider.dart';
import '../../collectUserData_3/components/greyTextScreenCollectUserData.dart';


class WhatToDoShape extends StatefulWidget {
  const WhatToDoShape({Key? key}) : super(key: key);
  @override
  State<WhatToDoShape> createState() => _WhatToDoShape();
}

class _WhatToDoShape extends State<WhatToDoShape> {
  @override
  Widget build(BuildContext context) {
    CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      width: screenWidth,
     // height: 260,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GreyTextScreenCollectUserData(text: 'What to do for your body shape',),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Most risks can be avoided with diet and exercise', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 12,left: 12),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.blueGrey,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(6)),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/heartBeat.jpeg'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxHeight: 300,
                                            maxWidth: screenWidth*.7,
                                          ),
                                          child: Container(

                                            child: Text((_Provider.getBodyType() == "Apple")? "Apple Body Shape"
                                                : (_Provider.getBodyType() == "Hourglass")? "Hourglass Body Shape"
                                                : (_Provider.getBodyType() == "Triangle")?"Triangle Body Shape"
                                                : (_Provider.getBodyType() == "Pear")? "Pear Body Shape"
                                                : (_Provider.getBodyType() == "Rectangle")? "Rectangle Body Shape": "Rectangle Body Shape",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                            //Text('Exercise at least 30 minutes per day to lose weight, and you can combine abdominal strengthening exercises to tighten the muscle.\n', style: TextStyle(
                                          )
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Padding(
                                        padding: const EdgeInsets.only(top: 3,right: 12,left: 12),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                width: 3,
                                                color: Colors.blueGrey,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(6)),
                                              image: DecorationImage(
                                                  image: AssetImage('assets/food.jpeg'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),

                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxHeight: 300,
                                            maxWidth: screenWidth*.7,
                                          ),
                                          child: Container(
                                            //VER PQ TA DANDO ERRO . . .. . .

                                            child: Text((_Provider.getBodyType() == "Apple")? "Apple Body Shape"
                                                : (_Provider.getBodyType() == "Hourglass")? "Hourglass Body Shape"
                                                : (_Provider.getBodyType() == "Triangle")?"Triangle Body Shape"
                                                : (_Provider.getBodyType() == "Pear")? "Pear Body Shape"
                                                : (_Provider.getBodyType() == "Rectangle")? "Rectangle Body Shape": "Rectangle Body Shape",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                            //Text('Try to incorporate more fruits and vegetables, and less fatty protein, such as salmon in your diet.\n', style: TextStyle(

                                          )
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
