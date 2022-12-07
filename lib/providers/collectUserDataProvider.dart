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
  double currentSliderValueChest = 0;
  double currentSliderValueWaist = 0;
  double currentSliderValueHip = 0;
  double currentSliderValueWeight = 0;
  double currentSliderValueHeight = 0;
  double BMI = 0;

  List<String> listGender = ['Gender', 'Female','Male','Others'];
  List<String> listEthnicity = ['Ethnicity', 'American Indian or Alaska Native','Asian',' Black or African American','Native Hawaiian or Other Pacific Islander','Hispanic or Latino'];

  double currentMesureSystem = 1;
  double medicalConditions = 0;

  void getAgeValue({required double ageValue}){
    print(ageValue);
    currentSliderValueAge = ageValue;
    notifyListeners();
  }

  void getChestValue({required double chestValue}){
    currentSliderValueChest = chestValue;
    notifyListeners();
  }
  void getWaistValue({required double waistValue}){
    currentSliderValueWaist = waistValue;
    notifyListeners();
  }
  void getHipValue({required double hipValue}){
    currentSliderValueHip = hipValue;
    notifyListeners();
  }
  void getWeightValue({required double weightValue}){
    currentSliderValueWeight = weightValue;
    notifyListeners();
  }
  void getHeightValue({required double heightValue}){
    currentSliderValueHeight = heightValue;
    notifyListeners();
  }

  void changeMesureSystem(){
    if(currentMesureSystem == 0){
      currentMesureSystem = 1;
    }
    else{
      currentMesureSystem = 0;
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
    double height = currentSliderValueHeight/100;
    if (height == 0.0) height = 1;
    BMI = currentSliderValueWeight/height * height;
    notifyListeners();
    //return currentSliderValueWeight/height * height;
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


  String calculateBodyType(){

    if((currentSliderValueChest - currentSliderValueWaist >= 4 && currentSliderValueHip - currentSliderValueWaist >= 4)){
      print("Hourglass");
    }
    else if (currentSliderValueHip - currentSliderValueChest >= 3 && currentSliderValueHip - currentSliderValueWaist < 9){
      print("Pear");
    }
    else if (currentSliderValueChest - currentSliderValueHip >= 3 && currentSliderValueChest - currentSliderValueWaist < 9){
      print("Inverted Triangle");
    }
    else if (currentSliderValueHip - currentSliderValueChest <= 4 && currentSliderValueWaist - currentSliderValueHip >= 3 && currentSliderValueWaist - currentSliderValueChest >= 3){
      print("Spoon");
    }
    else if (currentSliderValueHip - currentSliderValueChest < 3 && currentSliderValueChest - currentSliderValueHip < 3 && currentSliderValueChest - currentSliderValueWaist < 9 && currentSliderValueHip - currentSliderValueWaist < 10){
      print("Rectangle");
    }
    else{
     // System.out.println("Error");
    }
    return " ";
  }

  Future<RespostaProcessamento> loadListSnippets(BuildContext context) async{
    RespostaProcessamento respostaProcessamento = RespostaProcessamento.ok();

    try{

     /* List<Snippet> tempSnippetList = await DaoYoutube().snippetsFromJsom(videoName: videoName.text.trim());
      tempSnippetList.forEach((element) {
        snippetList.add(element);
      });*/

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

