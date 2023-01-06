import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/SignUp/views/SignUpScreen.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_1/viewCollectUserDataPart_1.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../../infra/services/firebase/firebaseManager.dart';
import '../../../../providers/logInSignUpProvider.dart';
import '../../SignUp/views/widgetsForSignUp.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);


  @override
  State<LogInScreen> createState() => _LogInScreenScreenState();
}

class _LogInScreenScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {

    final provider = context.read<LogInSignUpProvider>();
    RoundedLoadingButtonController contrrr = RoundedLoadingButtonController();
    double heightBetweenFields = 8.0;
    double scrennWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Form(
          key: provider.formKeyAuthenticationLogin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 500.0,
                height: 200.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.jpeg'),
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
              const SizedBox(height: 30,),

              SizedBox(height: heightBetweenFields ,),
              EmailController(
                hint: 'Email', iconData: Icons.person,
                emailController: provider.logInPageEmailController,
              ),
              SizedBox(height: heightBetweenFields ,),

              PasswordController(
                hint: 'Password',
                iconData: Icons.person,
                passwordController: provider.logInPagePasswordController,
              ),


              ElevatedButton(
                  onPressed:() async{

                    final formLogIn = provider.formKeyAuthenticationLogin;

                    if (formLogIn.currentState!.validate()){
                      FirebaseManager().loginUser(

                        email: provider.logInPageEmailController.text.trim(),
                        password:  provider.logInPagePasswordController.text.trim(),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ViewCollectUserDataPart_1()),
                      );
                      contrrr.reset();
                    }
                  },

                  child: Text("here")),

              /* LoadingButton(
                buttonText: 'Sign Up',
                goNextScreen: () {
                  FirebaseManager().registerUser(
                      provider.signUpPageConfirmPasswordController.text.trim(),
                      provider.signUpPagePasswordController.text.trim());

                //provider.singUpUser(context,);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ViewCollectUserData()),
                  );
                  contrrr.reset();
                  contrrr.reset();
                },
                controller: contrrr,

              ),*/

              const Expanded(child: SizedBox()),
              Container(

                height: 80,
                width: scrennWidth*0.8,
                decoration:  BoxDecoration(
                  color: Colors.green[800],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80)),
                ),
                child: GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("You don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Sign Up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue[400],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


