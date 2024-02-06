import 'package:firebase_auth/firebase_auth.dart';
import 'package:grocery/auth/domain/auth.dart';

class FirebaseSecurityInitializer implements SecurityInitializer {
  @override
  Future<void> init() {
    if (FirebaseAuth.instance.currentUser == null) {
      return _signInWithGoogle();
    }
    return Future<void>(() => {});
  }

  Future<void> _signInWithGoogle() async {
    // Create a new provider
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({
      'login_hint': 'user@example.com'
    });

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithRedirect(googleProvider);

    // Or use signInWithRedirect
    // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
  }

}

