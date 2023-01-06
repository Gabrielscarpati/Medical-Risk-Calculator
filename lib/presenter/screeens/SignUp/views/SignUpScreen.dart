import 'package:flutter/material.dart';
import 'package:health_status/presenter/screeens/LogIn/views/LogInScreen.dart';
import 'package:health_status/presenter/screeens/SignUp/views/popUpTermsAndConditions.dart';
import 'package:health_status/presenter/screeens/SignUp/views/termsAndConditions.dart';
import 'package:health_status/presenter/screeens/collectUserDataPart_1/viewCollectUserDataPart_1.dart';
import 'package:health_status/providers/logInSignUpProvider.dart';
import 'package:linkfive_purchases_provider/linkfive_purchases_provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../../../../domain/Models/bodyType.dart';
import '../../../../infra/services/firebase/firebaseManager.dart';
import '../../../../infra/services/getInformationByBodyType.dart';
import '../../LogIn/viewLogIn.dart';
import 'widgetsForSignUp.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);


  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
          key: provider.formKeyAuthenticationSignUp,
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
                emailController: provider.signUpPageEmailController,
              ),
              SizedBox(height: heightBetweenFields ,),

              PasswordController(
                hint: 'Password',
                iconData: Icons.person,
                passwordController: provider.signUpPagePasswordController,
              ),
              SizedBox(height: heightBetweenFields ,),

              ConfirmPasswordController(
                hint: 'Confirm Password',
                iconData: Icons.person,
                passwordController: provider.signUpPagePasswordController,
                confirmPasswordController: provider.signUpPageConfirmPasswordController,
              ),
              SizedBox(height: heightBetweenFields*3 ,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 16.0, left: 14.0),
                    child: CheckboxListTile(
                      activeColor: Colors.green[800],

                      value: provider.isChecked,
                      onChanged: (bool? newValue) {
                        provider.updateIsCheck();
                        setState(() {
                          provider.isChecked = provider.isChecked;
                        });
                      },

                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'I have read and agree with',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 14),
                                  ),
                                  Text(
                                    'Terms and conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigoAccent,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              onTap: () {
                                viewTermsAndConditions(context);
                              }
                          ),
                        ],
                      ),

                      checkColor: Colors.indigo,
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                  onPressed:() async{

                  final form = provider.formKeyAuthenticationSignUp.currentState!;
                  print(provider.isChecked);
                  if(provider.isChecked == false) {
                    acceptTermsAndConditions();
                  }
                  else if (form.validate() && provider.signUpPageConfirmPasswordController.text == provider.signUpPagePasswordController.text){
                    FirebaseManager().registerUser(

                        email: provider.signUpPageEmailController.text.trim(),
                        password:  provider.signUpPagePasswordController.text.trim(),
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
                      const Text("Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Log In',
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
                            return LogInScreen();
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

  Future viewTermsAndConditions(context) => showDialog(
    context: context,
    builder: (context) => const ViewTermsAndConditions(),
  );

  Future acceptTermsAndConditions() => showDialog(
    context: context,
    builder: (context) => PopUpTermsAndConditions(),
  );
}
