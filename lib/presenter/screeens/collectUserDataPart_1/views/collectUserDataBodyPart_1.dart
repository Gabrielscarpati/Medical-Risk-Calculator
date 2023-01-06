import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../providers/collectUserDataProvider.dart';
import '../../collectUserDataPart_2/viewCollectUserDataPart_2.dart';
import 'basicBiodataPart_1.dart';
import 'package:provider/provider.dart';

class CollectUserDataBodyPart_1 extends StatelessWidget {
  const CollectUserDataBodyPart_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CollectUserDataProvider _Provider = context.watch<CollectUserDataProvider>();

    RoundedLoadingButtonController _controller = RoundedLoadingButtonController();

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("USF Microbiome Center", style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ), ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Medical Risk Calculator", style: TextStyle(
                          color: Colors.black,
                           fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ), ),
                    ],
                  ),
                ),
               // Expanded(
                BasicBiodataPart_1(),
                ElevatedButton(onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>  ViewCollectUserDataPart_2()),
                  );
                  _Provider.getBodyType();
                    }, child: Text(
                  'here'
                )),
               /* ButtonInsideApp(
                  controller: _controller,
                  buttonText: 'Generate report',
                  goNextScreen: () {
                    _Provider.getBodyType();
                    _Provider.calculateBMI();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ViewCollectUserData_2()),
                    );
                    *//*if(1==1){
                      controller.start();

                    }*//*
                    _controller.reset();
                  },

                )*/
        ],
      ),
    );
  }
}
