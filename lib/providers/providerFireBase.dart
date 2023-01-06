import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import 'collectUserDataProvider.dart';


class ProviderFireBase with ChangeNotifier {

  static final ProviderFireBase provider = ProviderFireBase._internal();

  factory ProviderFireBase() {
    return provider;
  }

  ProviderFireBase._internal();

  CollectUserDataProvider userDataProvider = CollectUserDataProvider();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;


  Future<String?> getUserId() async {
    final User? user = await auth.currentUser;
    final userId = user?.uid.toString();
    return userId;
  }

  Future<String?> getUserEmail() async {
    final user = await auth.currentUser?.email;
    return user;
  }

  Future<void> saveDataFirebase() async {
      await firestore.collection('userData').doc(await getUserId()).set({
        'ChestCircumference': (userDataProvider.currentValueChest+userDataProvider.currentValueChestDecimal/100),
        'Age': (userDataProvider.currentSliderValueAge),
        'Ethnicity': (userDataProvider.listEthnicity[0]),
        'Gender': (userDataProvider.listGender[0]),
        'Height': (userDataProvider.currentValueHeight+userDataProvider.currentValueHeightDecimal/100),
        'HipCircumference': (userDataProvider.currentValueHip+userDataProvider.currentValueHipDecimal/100),
        'WaistCircumference':(userDataProvider.currentValueWaist+userDataProvider.currentValueWaistDecimal/100),
        'Weight': (userDataProvider.currentValueWeight+userDataProvider.currentValueWeightDecimal/100),
        'Email': await getUserEmail(),
        'UserId': await getUserId(),
        }
      );

      notifyListeners();
  }
}