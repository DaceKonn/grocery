import 'package:firebase_core/firebase_core.dart';
import 'package:grocery/framework/firebase/firebase_options.dart';
import 'package:grocery/framework/infrastructure.dart';

class FirebaseInitializerImpl implements InfrastructureInitializer {
  @override
  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

}