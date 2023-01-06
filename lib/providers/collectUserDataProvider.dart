import 'package:flutter/cupertino.dart';
import '../ultil/respostaProcessamento.dart';


class CollectUserDataProvider with ChangeNotifier {

  static final CollectUserDataProvider provider = CollectUserDataProvider._internal();

  factory CollectUserDataProvider() {
    return provider;
  }
  CollectUserDataProvider._internal();

/*  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final chestCircumferenceController = TextEditingController();
  final waistCircumferenceController = TextEditingController();
  final hipSize = TextEditingController();*/

  double currentSliderValueAge = 0;

  int currentValueChest = 80;
  int currentValueChestDecimal = 45;

  int currentValueWaist = 80;
  int currentValueWaistDecimal = 45;

  int currentValueHip = 80;
  int currentValueHipDecimal = 45;

  int currentValueWeight = 80;
  int currentValueWeightDecimal = 45;

  int currentValueHeight = 120;
  int currentValueHeightDecimal = 12;

  double BMI = 0;



  List<String> listGender = ['Gender', 'Female','Male','Others'];
  List<String> listEthnicity = ['Ethnicity', 'American Indian or Alaska Native','Asian',' Black or African American','Native Hawaiian or Other Pacific Islander','Hispanic or Latino'];

  double currentMesureSystem_1 = 1;
  double currentMesureSystem_2 = 1;

  double medicalConditions = 0;

  void getAgeValue({required double ageValue}){
    currentSliderValueAge = ageValue;
    notifyListeners();
  }

  void getChestValue({required var chestValue}){
    currentValueChest = chestValue;
    notifyListeners();
  }
  void getChestValueDecimal({ required var chestValueDecimal}){
    currentValueChestDecimal = chestValueDecimal;
    notifyListeners();
  }

  void getWaistValue({required int waistValue}){
    currentValueWaist = waistValue;
    notifyListeners();
  }
  void getHipValue({required int hipValue}){
    currentValueHip = hipValue;
    notifyListeners();
  }
  void getWeightValue({required int weightValue}){
    currentValueWeight = weightValue;
    notifyListeners();
  }
  void getHeightValue({required int heightValue}){
    currentValueHeight = heightValue;
    notifyListeners();
  }

  void getWaistValueDecimal({required int waistValueDecimal}){
    currentValueWaistDecimal = waistValueDecimal;
    notifyListeners();
  }
  void getHipValueDecimal({required int hipValueDecimal}){
    currentValueHipDecimal = hipValueDecimal;
    notifyListeners();
  }
  void getWeightValueDecimal({required int weightValueDecimal}){
    currentValueWeightDecimal = weightValueDecimal;
    notifyListeners();
  }
  void getHeightValueDecimal({required int heightValueDecimal}){
    currentValueHeightDecimal = heightValueDecimal;
    notifyListeners();
  }

  void changeMesureSystem_1(){
    if(currentMesureSystem_1 == 0){
      currentMesureSystem_1 = 1;
    }
    else{
      currentMesureSystem_1 = 0;
    }
    notifyListeners();
  }

  void changeMesureSystem_2(){
    if(currentMesureSystem_2 == 0){
      currentMesureSystem_2 = 1;
    }
    else{
      currentMesureSystem_2 = 0;
    }
    notifyListeners();
  }

  void changeMedicalConditions(){
    if(medicalConditions == 0){
      medicalConditions = 1;
    }
    else{
      medicalConditions = 0;
    }
    notifyListeners();
  }

  void calculateBMI(){
    double height = 1;
    double weight = 1;
    if (currentMesureSystem_2 == 0){
       weight = currentValueWeight+(currentValueWeightDecimal/100);
       height = (currentValueHeight*30.48)+(currentValueHeightDecimal*2.54);
       height = height/100;
       weight = weight*0.4535924;

    }else{
       height =( currentValueHeight+(currentValueHeightDecimal/100))/100; // meters
       weight = currentValueWeight+(currentValueWeightDecimal/100);
    }

    BMI = weight/(height*height) ;
    print("BMI= ${BMI}");
    notifyListeners();
  }

  void updateListGender({required String? gender}){
    String temporary = "";
    for(int i = 0; i<listGender.length; i++){
      if(listGender[i] == gender){
        temporary = listGender[i];
        listGender[i] =listGender[0];
        listGender[0] =temporary;
        break;
      }
    }
    notifyListeners();
  }

  void updateListEthnicity({required String? gender}){
    String temporary = "";
    for(int i = 0; i<listEthnicity.length; i++){
      if(listEthnicity[i] == gender){
        temporary = listEthnicity[i];
        listEthnicity[i] =listEthnicity[0];
        listEthnicity[0] =temporary;
        break;
      }
    }
    notifyListeners();
  }


  String getBodyType(){ // metric =1

    /*
    print(currentMesureSystem_1.toString()+"aaaaaaaa");

      if ((((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 >= 4 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 >= 4)) {
        return "Hourglass";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 >= 3 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaist/100)) / 2.54 < 9) {
        return "Pear";
      } else if ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100) / 2.54 >= 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 9) {
        return "Triangle";

      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 <= 4 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueHip+ currentValueHipDecimal/100)) / 2.54 >= 3 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 >= 3) {
        return "Apple";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100)) / 2.54 < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 9 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 10) {
        return "Rectangle";
      } else {
        print("Error");
      }*/

      double currentValueChestTotal = currentValueChest+currentValueChestDecimal/100;
      double currentValueWaistTotal = currentValueWaist+currentValueWaistDecimal/100;
      double currentValueHipTotal = currentValueHip+currentValueHipDecimal/100;

      if(currentMesureSystem_1 == 1.0) {
        currentValueChestTotal = currentValueChestTotal/2.54;
        currentValueWaistTotal = currentValueWaistTotal/2.54;
        currentValueHipTotal = currentValueHipTotal/2.54;
      }

      if ((( currentValueChestTotal- currentValueWaistTotal)  >= 4 &&
          (currentValueHipTotal - currentValueWaistTotal)  >= 4)) {
        print("Hourglass");
        return "Hourglass";
      } else if ((currentValueHipTotal - currentValueChestTotal) >= 3 &&
          (currentValueHipTotal - currentValueWaistTotal) < 9) {
        print("Pear");
        return "Pear";
      } else if (currentValueChestTotal - currentValueHipTotal  >= 3 &&
          (currentValueChestTotal -currentValueWaistTotal)< 9) {
        print("Triangle");
        return "Triangle";
      } else if ((currentValueHipTotal - currentValueChestTotal)  <= 4 &&
          (currentValueWaistTotal - currentValueHipTotal) >= 3 &&
          (currentValueWaistTotal - currentValueChestTotal)  >= 3) {

        print("Apple");
        return "Apple";
      } else if ((currentValueHipTotal -currentValueChestTotal)  < 3 &&
          (currentValueChestTotal - currentValueHipTotal)  < 3 &&
          (currentValueChestTotal - currentValueWaistTotal)  < 9 &&
          (currentValueHipTotal - currentValueWaistTotal)  < 10) {
        print("Rectangle");
        return "Rectangle";

      } else {
        print("Error");
      }


    return " ";
  }

  Future<RespostaProcessamento> loadListSnippets(BuildContext context) async{
    RespostaProcessamento respostaProcessamento = RespostaProcessamento.ok();

    try{

     print("a");
    }catch(err){
      respostaProcessamento = RespostaProcessamento.erro(err.toString());
    }

    return respostaProcessamento;
  }

  bool highPressure = false;
  bool hypertension = false;
  bool dyslipidemia = false;
  bool diabetes_1 = false;
  bool diabetes_2 = false;
  bool coronaryHeartDisease = false;
  bool stroke = false;
  bool osteoarthiritis = false;
  bool gallbladderDisease = false;
  bool sleepApnea = false;
  bool cancer = false;
  bool mentalIllnesses = false;
  bool physicalHandicaps = false;

}



/*  String getBodyType(){ // metric =1
    // inches
    if(currentMesureSystem_1 == 1.0) {
      print(currentMesureSystem_1.toString()+"aaaaaaaa");

      if ((((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 >= 4 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 >= 4)) {
        return "Hourglass";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 >= 3 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaist/100)) / 2.54 < 9) {
        return "Pear";
      } else if ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100) / 2.54 >= 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 9) {
        return "Triangle";

      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 <= 4 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueHip+ currentValueHipDecimal/100)) / 2.54 >= 3 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 >= 3) {
        return "Apple";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) / 2.54 < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100)) / 2.54 < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 9 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100)) / 2.54 < 10) {
        return "Rectangle";
      } else {
        print("Error");
      }
    }

    else {
      if ((((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100))  >= 4 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100))  >= 4)) {
        print("Hourglass");
        return "Hourglass";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100)) >= 3 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaist/100)) < 9) {
        print("Pear");
        return "Pear";
      } else if ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100)  >= 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100))< 9) {
        print("Triangle");
        return "Triangle";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100))  <= 4 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueHip+ currentValueHipDecimal/100)) >= 3 &&
          ((currentValueWaist+currentValueWaistDecimal/100) - (currentValueChest+currentValueChestDecimal/100))  >= 3) {

        print("Spoon");
        return "Spoon";
      } else if (((currentValueHip+currentValueHipDecimal/100) - (currentValueChest+currentValueChestDecimal/100))  < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueHip+currentValueHipDecimal/100))  < 3 &&
          ((currentValueChest+currentValueChestDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100))  < 9 &&
          ((currentValueHip+currentValueHipDecimal/100) - (currentValueWaist+currentValueWaistDecimal/100))  < 10) {
        print("Rectangle");
        return "Rectangle";

      } else {
        print("Error");
      }
    }
    return " ";
  }*/