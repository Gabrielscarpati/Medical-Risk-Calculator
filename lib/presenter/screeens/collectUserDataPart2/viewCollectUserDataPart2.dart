import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart2/views/collectUserDataBodyPart2.dart';
import 'package:provider/provider.dart';
import 'package:health_status/presenter/screeens/collectUserData/views/collectUserDataBody.dart';
import '../../../providers/collectUserDataProvider.dart';
import '../../../ultil/respostaProcessamento.dart';


class ViewCollectUserDataPart2 extends StatefulWidget {
  const ViewCollectUserDataPart2({Key? key}) : super(key: key);

  @override
  State<ViewCollectUserDataPart2> createState() => _ViewCollectUserDataPart2State();
}

class _ViewCollectUserDataPart2State extends State<ViewCollectUserDataPart2> {
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
              child: CollectUserDataBodyPart2(),

      ),
    );
  }
}
