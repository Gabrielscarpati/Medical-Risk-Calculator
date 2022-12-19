import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_1/views/collectUserDataBodyPart_1.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_2/views/collectUserDataBodyPart_2.dart';
import 'package:provider/provider.dart';
import '../../../providers/collectUserDataProvider.dart';
import '../../../ultil/respostaProcessamento.dart';


class ViewCollectUserDataPart_2 extends StatefulWidget {
  const ViewCollectUserDataPart_2({Key? key}) : super(key: key);

  @override
  State<ViewCollectUserDataPart_2> createState() => _ViewCollectUserDataPart_2State();
}

class _ViewCollectUserDataPart_2State extends State<ViewCollectUserDataPart_2> {
  late Future<RespostaProcessamento> response;

  @override
  void initState() {
    response = context.read<CollectUserDataProvider>().loadListSnippets(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          height: 910,
              child: CollectUserDataBodyPart_2(),

      ),
    );
  }
}
