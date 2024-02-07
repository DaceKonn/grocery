
import 'package:get_it/get_it.dart';
import 'package:grocery/framework/auth/auth.dart';
import 'package:grocery/framework/firebase/firebase_authentication.dart';
import 'package:grocery/framework/infrastructure.dart';
import 'firebase/firebase_initializer_impl.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<InfrastructureInitializer>(FirebaseInitializerImpl());
  locator.registerSingleton<SecurityInitializer>(FirebaseSecurityInitializer());
}