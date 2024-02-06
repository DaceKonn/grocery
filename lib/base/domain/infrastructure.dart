import 'package:grocery/base/infrastructure/dependency_registry.dart';

abstract class InfrastructureInitializer {
  Future<void> init();
}

Future<void> initializeInfrastructure() async {
  return locator<InfrastructureInitializer>().init();
}