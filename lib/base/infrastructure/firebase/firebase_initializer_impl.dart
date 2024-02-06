import 'package:firebase_core/firebase_core.dart';
import 'package:grocery/base/domain/infrastructure.dart';
import 'package:grocery/base/infrastructure/firebase/firebase_options.dart';

class FirebaseInitializerImpl implements InfrastructureInitializer {
  @override
  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

}