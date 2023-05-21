import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:socytal/pages/home.dart';

class AuthService {

  //Sign In with google
  signInWithGoogle() async {
    // begin the procces of signing in
    final GoogleSignInAccount? gUser = await googleSignIn.signIn();

    //obtaining auth details from the previous request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // creating the credentials for the user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
