import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final auth = FirebaseAuth.instance;

  Future<void> signInWithGoogle() async {
    await GoogleSignIn().signIn().then((googleAccount) async {
      if (googleAccount != null) {
        final googleAccountAuthentication = await googleAccount.authentication;
        final credentials = GoogleAuthProvider.credential(
            idToken: googleAccountAuthentication.idToken,
            accessToken: googleAccountAuthentication.accessToken);
        await auth.signInWithCredential(credentials);
      }
    });
  }

  Future<void> signOut() async {
    await GoogleSignIn().isSignedIn() ? signOut() : null;
    await auth.signOut();
  }
}
