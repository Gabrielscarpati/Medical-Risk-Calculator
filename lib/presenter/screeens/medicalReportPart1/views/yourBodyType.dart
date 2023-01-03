import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../components/greyTextScreenCollectUserData.dart';


class YourBodyType extends StatefulWidget {
  const YourBodyType({Key? key}) : super(key: key);
  @override
  State<YourBodyType> createState() => _AgeMedicalConditions();
}

class _AgeMedicalConditions extends State<YourBodyType> {
  @override
  Widget build(BuildContext context) {
    final CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      width: screenWidth,
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
                          GreyTextScreenCollectUserData(text: 'Your body Type',),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /**/
                                  Text((_Provider.getBodyType() == "Apple")? "Apple Body Shape"
                                    : (_Provider.getBodyType() == "Hourglass")? "Hourglass Body Shape"
                                    : (_Provider.getBodyType() == "Triangle")?"Triangle Body Shape"
                                    : (_Provider.getBodyType() == "Pear")? "Pear Body Shape"
                                    : (_Provider.getBodyType() == "Rectangle")? "Rectangle Body Shape": "Rectangle Body Shape",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxHeight: 300,
                                        minWidth: screenWidth*.7,
                                        maxWidth: screenWidth*.7,
                                      ),
                                      child: Container(
                                        //VER PQ TA DANDO ERRO . . .. . .

                                        child: Text( (_Provider.getBodyType() == "Apple")? "Apple"
                                          : (_Provider.getBodyType() == "Hourglass")? "Hourglass"
                                          : (_Provider.getBodyType() == "Triangle")?"Triangle"
                                          : (_Provider.getBodyType() == "Pear")? "Pear"
                                          : (_Provider.getBodyType() == "Rectangle")? "Rectangle": "Rectangle",
                                       style: TextStyle(
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


                    Container(
                      height: screenHeight*0.12,
                      width: screenWidth*.24,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image : (_Provider.getBodyType() == "Apple")? AssetImage('assets/Apple.jpeg')
                                    : (_Provider.getBodyType() == "Hourglass")? AssetImage('assets/Hourglass.jpeg')
                                    : (_Provider.getBodyType() == "Triangle")? AssetImage('assets/Triangle.jpeg')
                                    : (_Provider.getBodyType() == "Pear")? AssetImage('assets/Pear.jpeg')
                                    : (_Provider.getBodyType() == "Rectangle")? AssetImage('assets/Rectangle.jpeg'): AssetImage('assets/Rectangle.jpeg'),

                              fit: BoxFit.fill
                          ),
                      ),
                    )
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
