import 'package:grocery/framework/dependency_registry.dart';

abstract class InfrastructureInitializer {
  Future<void> init();
}

Future<void> initializeInfrastructure() async {
  return locator<InfrastructureInitializer>().init();
}