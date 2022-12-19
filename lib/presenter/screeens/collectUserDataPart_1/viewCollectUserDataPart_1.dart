import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_1/views/collectUserDataBodyPart_1.dart';
import 'package:provider/provider.dart';
import '../../../providers/collectUserDataProvider.dart';
import '../../../ultil/respostaProcessamento.dart';


class ViewCollectUserDataPart_1 extends StatefulWidget {
  const ViewCollectUserDataPart_1({Key? key}) : super(key: key);

  @override
  State<ViewCollectUserDataPart_1> createState() => _ViewCollectUserDataPart_1State();
}

class _ViewCollectUserDataPart_1State extends State<ViewCollectUserDataPart_1> {
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
              child: CollectUserDataBodyPart_1(),

      ),
    );
  }
}
