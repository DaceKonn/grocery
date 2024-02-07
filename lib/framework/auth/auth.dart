import 'package:grocery/framework/dependency_registry.dart';

abstract class SecurityInitializer {
  Future<void> init();
}

Future<void> initializeSecurity() {
  return locator<SecurityInitializer>().init();
}