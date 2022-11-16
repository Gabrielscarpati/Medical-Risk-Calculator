import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:health_status/presenter/screeens/collectUserData/views/collectUserDataBody.dart';
import '../../../providers/collectUserDataProvider.dart';
import '../../../ultil/respostaProcessamento.dart';


class ViewCollectUserData extends StatefulWidget {
  const ViewCollectUserData({Key? key}) : super(key: key);

  @override
  State<ViewCollectUserData> createState() => _ViewCollectUserDataState();
}

class _ViewCollectUserDataState extends State<ViewCollectUserData> {
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
              child: CollectUserDataBody(),

      ),
    );
  }
}
