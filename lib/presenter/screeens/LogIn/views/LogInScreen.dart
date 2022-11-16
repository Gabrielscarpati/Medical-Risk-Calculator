import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../../components/loadingButton.dart';
import '../../SignUp/viewSignUp.dart';
import '../../SignUp/views/widgetsForSignUp.dart';
import '../../collectUserData/viewCollectUserData.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);


  @override
  State<LogInScreen> createState() => _LogInScreenScreenState();
}

class _LogInScreenScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    double heightBetweenFields = 8.0;
    double scrennWidth = MediaQuery.of(context).size.width;
    RoundedLoadingButtonController controller = RoundedLoadingButtonController();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],

      body: Container(
        child: Form(
          //key: LogInSignUpProvider.,
          child: Center(
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
                const SizedBox(height: 50,),

                EmailController(
                  hint: 'Email', iconData: Icons.person,
                  emailController: emailController,
                ),
                SizedBox(height: heightBetweenFields ,),

                PasswordController(
                  hint: 'Password',
                  iconData: Icons.person,
                  passwordController: passwordController,
                ),
                SizedBox(height: heightBetweenFields ,),


                SizedBox(height: heightBetweenFields*12 ,),

                LoadingButton(
                  buttonText: 'Log In',
                  goNextScreen: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ViewCollectUserData()),
                    );
                  },
                  controller: controller,

                ),
                const Expanded(child: SizedBox()),
                Container(
                  //color: Colors.green,
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
                        const Text("Don't have an account?",
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

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ViewSignUp()),
                              (route) => false
                      );

                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


