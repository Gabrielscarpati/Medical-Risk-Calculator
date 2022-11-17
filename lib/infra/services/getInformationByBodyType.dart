
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/Models/bodyType.dart';

class GetInformationByBodyType {

  CollectionReference termos = FirebaseFirestore.instance.collection('bodyTypes');

  Future<BodyType> betInformationByBodyType() async{
    DocumentSnapshot snapshot = await termos.doc('Ruler').get();
    var data = snapshot.data() as Map<String, dynamic>;
    BodyType bodyTypeChosen = BodyType(
        videoExercisesRuler: data['VideoExercisesRuler'],
        bodyType: data['bodyType'],
        bodyTypeText: data['bodyTypeText'],
        healthRisks: data['healthRisks'],
        whatToDoDiet: data['whatToDoDiet'],
        whatToDoExercise: data['whatToDoExercise'],
        whyMightThisOccur: data['whyMightThisOccur'],
    );
    return bodyTypeChosen;
  }

}


/*
class GetInformationByBodyType {
  final FirebaseFirestore _instance = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<BodyType> action(String idPrestador) async {
    BodyType bodyTypeChosen ;
    QuerySnapshot query = await _instance
        .collection('comentarios')
        .where('idPrestador', isEqualTo: idPrestador)
        .get();

    List docs = query.docs;
    docs.forEach((element) {
      listaComentarios.add(

        BusinessModelAvaliacaoPrestadorDeServico(
          codPrestadorDeServico: element['idPrestador'],
          comentario: element['textoComentario'],
          data: element['data'],
          nota: int.parse(element['nota']),
          idUsuario: element['idUsuario'],
          emailUsuario: element['emailUsuario'],
        ),



      );
    });
    return listaComentarios;
  }
}
*/
