import 'package:flutter/cupertino.dart';


class ProviderBase with ChangeNotifier {

  static final ProviderBase provider = ProviderBase._internal();

  factory ProviderBase() {
    return provider;
  }

  ProviderBase._internal();




}

/*
import java.util.Scanner;
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