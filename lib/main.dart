import 'package:flutter/material.dart';
import 'package:grocery/framework/auth/auth.dart';
import 'package:grocery/framework/dependency_registry.dart';
import 'package:grocery/framework/infrastructure.dart';

import 'framework/widgets/my_app.dart';

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

