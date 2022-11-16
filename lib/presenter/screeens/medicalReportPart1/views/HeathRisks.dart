import 'package:flutter/material.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import '../components/greyTextScreenCollectUserData.dart';


class HeathRisks extends StatefulWidget {
  const HeathRisks({Key? key}) : super(key: key);
  @override
  State<HeathRisks> createState() => _HeathRisks();
}

class _HeathRisks extends State<HeathRisks> {
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
                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GreyTextScreenCollectUserData(text: 'Health Risks',),
                        SizedBox(height: 12,),
                        Column(
                          children: [
                            ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: 300,
                                  maxWidth: screenWidth -24,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
