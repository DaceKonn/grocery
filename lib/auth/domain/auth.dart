import 'package:grocery/base/infrastructure/dependency_registry.dart';

abstract class SecurityInitializer {
  Future<void> init();
}

Future<void> initializeSecurity() {
  return locator<SecurityInitializer>().init();
}