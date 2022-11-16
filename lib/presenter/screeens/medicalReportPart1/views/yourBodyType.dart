import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import '../components/greyTextScreenCollectUserData.dart';


class YourBodyType extends StatefulWidget {
  const YourBodyType({Key? key}) : super(key: key);
  @override
  State<YourBodyType> createState() => _AgeMedicalConditions();
}

class _AgeMedicalConditions extends State<YourBodyType> {
  @override
  Widget build(BuildContext context) {
    final provider = context.read<LogInSignUpProvider>();

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
                                  Text('Apple Body Shape', style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold
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

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: screenHeight*0.05,
                        width: screenWidth*.1,
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
                    Container(
                      height: screenHeight*0.16,
                      width: screenWidth*.32,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage('assets/background.jpeg'),
                              fit: BoxFit.fill
                          )
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
