import 'package:flutter/cupertino.dart';

import '../ultil/respostaProcessamento.dart';


class CollectUserDataProvider with ChangeNotifier {

  static final CollectUserDataProvider provider = CollectUserDataProvider._internal();

  factory CollectUserDataProvider() {
    return provider;
  }

  CollectUserDataProvider._internal();

  final heightController = TextEditingController();
  final weightController = TextEditingController();


  double currentSliderValueAge = 0;
   double currentSliderValueChestCircumference = 0;
   double currentSliderValueWaistCircumference= 0;
   double currentSliderValueHipSize = 0;
   double currentSliderValueChest =0;
   double currentSliderValueWaist =0;
   double currentSliderValueHip =0;

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

  notifyListeners();
}




/*import java.util.Scanner;
class Main {
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    double chest;
    double waist;
    double hips;
    System.out.println("What is your chest size?");
    chest = scan.nextDouble();
    System.out.println("What is your waist size?");
    waist = scan.nextDouble();
    System.out.println("What is your hip size?");
    hips = scan.nextDouble();
    if((chest - waist >= 4 && hips - waist >= 4)){
      System.out.println("Hourglass");
    }
    else if (hips - chest >= 3 && hips - waist < 9){
      System.out.println("Pear");
    }
    else if (chest - hips >= 3 && chest - waist < 9){
      System.out.println("Inverted Triangle");
    }
     else if (hips - chest <= 4 && waist - hips >= 3 && waist - chest >= 3){
      System.out.println("Spoon");
    }
    else if (hips - chest < 3 && chest - hips < 3 && chest - waist < 9 && hips - waist < 10){
      System.out.println("Rectangle");
    }
    else{
      System.out.println("Error");
    }
  }
}
 */
