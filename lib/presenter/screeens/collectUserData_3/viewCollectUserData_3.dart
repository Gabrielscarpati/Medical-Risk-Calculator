import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/collectUserData_3/views/collectUserDataBody_3.dart';
import 'package:provider/provider.dart';
import '../../../providers/collectUserDataProvider.dart';
import '../../../ultil/respostaProcessamento.dart';
import '../medicalReportPart1/viewMedicalReportPart1.dart';


class ViewCollectUserData_3 extends StatefulWidget {
  const ViewCollectUserData_3({Key? key}) : super(key: key);

  @override
  State<ViewCollectUserData_3> createState() => _ViewCollectUserData_3State();
}

class _ViewCollectUserData_3State extends State<ViewCollectUserData_3> {
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
              child: ViewMedicalReportPart1(),

      ),
    );
  }
}
