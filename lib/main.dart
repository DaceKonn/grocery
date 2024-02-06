import 'package:flutter/material.dart';
import 'package:grocery/auth/domain/auth.dart';
import 'package:grocery/auth/infrastructure/firebase_authentication.dart';
import 'package:grocery/base/domain/infrastructure.dart';
import 'package:grocery/base/infrastructure/dependency_registry.dart';

import 'base/view/widgets/my_app.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Both of the following lines are good for testing,
  // but can be removed for release builds
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  // await FirebaseAuth.instance.signOut();

  setupLocator();

  await initializeInfrastructure();
  await initializeSecurity();

  runApp(const MyApp());
}

