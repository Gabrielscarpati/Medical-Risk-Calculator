import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class NameControllerLogIn extends StatelessWidget {
  final TextEditingController nameController;
  final String hint;
  final IconData iconData;
  const NameControllerLogIn({Key? key, required this.nameController, required this.hint, required this.iconData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (emailController) {
              emailController == null ? 'Invalid Email' : null;
              return null;
            },

            controller: nameController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData, color: Colors.green,),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close, color: Colors.green,),
                onPressed: () =>
                    nameController.clear(),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}

class EmailControllerLogIn extends StatelessWidget {
  final TextEditingController emailController;
  final String hint;
  final IconData iconData;
   const EmailControllerLogIn({Key? key, required this.emailController, required this.hint, required this.iconData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (emailController) =>
            !EmailValidator.validate(
                emailController!)
                ? 'Invalid Email'
                : null,
            controller: emailController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData,color: Colors.green,),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close, color: Colors.green,),
                onPressed: () =>
                    emailController.clear(),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}


class PasswordControllerLogIn extends StatefulWidget {
  final TextEditingController passwordController;
  final String hint;
  final IconData iconData;
  const PasswordControllerLogIn({Key? key, required this.passwordController, required this.hint, required this.iconData}) : super(key: key);

  @override
  State<PasswordControllerLogIn> createState() => _PasswordControllerLogInState();
}

class _PasswordControllerLogInState extends State<PasswordControllerLogIn> {
  bool passwordIsHidden = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextFormField(
            textAlignVertical: TextAlignVertical.bottom,
            validator: (passwordController) {
              if (passwordController!.isEmpty ||
                  !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
                      .hasMatch(passwordController)) {
                return "Your password must contain an uppercase and lowercase\nletter and a number and at least 8 characters";
              } else {
                return null;
              }
            },
            controller: widget.passwordController,
            cursorColor: Colors.indigoAccent,
            obscureText: passwordIsHidden,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hint,

              prefixIcon: Icon(widget.iconData,color: Colors.green,),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    passwordIsHidden = !passwordIsHidden;
                  });
                },
                child: Icon(
                  passwordIsHidden
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Colors.green,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}


/*Widget inputField({required String hint, required IconData iconData}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
    child: SizedBox(
      height: 50,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}
*/




