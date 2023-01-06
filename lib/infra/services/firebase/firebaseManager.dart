
import 'package:firebase_auth/firebase_auth.dart';

import '../../../ultil/auth/constants.dart';
import '../../../ultil/respostaProcessamento.dart';

class FirebaseManager{

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> getUserCurrentID() async{
    return firebaseAuth.currentUser!.uid;
  }

  Future<User?> registerUser ({required String email, required String password}) async {
    print(email);
    print(password);
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      await loginUser(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch(e){
      print(e);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString()),backgroundColor: Colors.red));
    } catch (e){
      print(e);
    }
  }

  Future<User?> loginUser ({required String email, required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
    return null;
  }

  Future signOut() async {
    try {
      return await firebaseAuth.signOut();

    } catch(e){
      print(e.toString());
      return null;
    }
  }
}


