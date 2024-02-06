
import 'package:get_it/get_it.dart';
import 'package:grocery/auth/domain/auth.dart';
import 'package:grocery/auth/infrastructure/firebase_authentication.dart';
import 'package:grocery/base/domain/infrastructure.dart';
import 'firebase/firebase_initializer_impl.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<InfrastructureInitializer>(FirebaseInitializerImpl());
  locator.registerSingleton<SecurityInitializer>(FirebaseSecurityInitializer());
}