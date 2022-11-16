import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';

import '../../collectUserData/components/greyTextScreenCollectUserData.dart';


class WhatToDoShape extends StatefulWidget {
  const WhatToDoShape({Key? key}) : super(key: key);
  @override
  State<WhatToDoShape> createState() => _WhatToDoShape();
}

class _WhatToDoShape extends State<WhatToDoShape> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();

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
                                                  image: AssetImage('assets/background.jpeg'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxHeight: 300,
                                            maxWidth: screenWidth*.5,
                                          ),
                                          child: Container(
                                            //VER PQ TA DANDO ERRO . . .. . .

                                            child: const Text('Apple Body Shape Apple Body Shape Apple Body Shape Apple Body Shapen\n', style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
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
                                                  image: AssetImage('assets/background.jpeg'),
                                                  fit: BoxFit.fill
                                              )
                                          ),
                                        ),
                                      ),
                                      ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxHeight: 300,
                                            maxWidth: screenWidth*.5,
                                          ),
                                          child: Container(
                                            //VER PQ TA DANDO ERRO . . .. . .

                                            child: const Text('Apple Body Shape Apple Body Shape Apple Body Shape Apple Body Shapen\n', style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            ),
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
