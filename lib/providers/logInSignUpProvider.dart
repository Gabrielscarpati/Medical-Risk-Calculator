import 'package:flutter/cupertino.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../infra/services/firebase/firebaseManager.dart';
import '../ultil/respostaProcessamento.dart';

class LogInSignUpProvider with ChangeNotifier {

  static final LogInSignUpProvider provider = LogInSignUpProvider._internal();

  factory LogInSignUpProvider() {
    return provider;
  }

  LogInSignUpProvider._internal();


  bool isChecked = false;

  void updateIsCheck(){
    print(isChecked);
    isChecked = !isChecked;
  }


  final nameController = TextEditingController();
  final GlobalKey<FormState> formKeyAuthenticationLogin = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyAuthenticationSignUp = GlobalKey<FormState>();
  final signUpPageEmailController = TextEditingController();
  final signUpPagePasswordController = TextEditingController();
  final signUpPageConfirmPasswordController = TextEditingController();
  final logInPageEmailController = TextEditingController();
  final logInPagePasswordController = TextEditingController();
  final RoundedLoadingButtonController btnController = RoundedLoadingButtonController();


  /*Future<void> singUpUser(BuildContext context) async{

    if(formKeyAuthenticationSignUp.currentState!.validate()){
      print('ooooooo');

      //RespostaProcessamento resp =  await FirebaseManager().registerUser(context,email: signUpPageEmailController.text.trim(), password: signUpPagePasswordController.text.trim());
      //resp;
    }
    btnController.reset();
  }*/





}


