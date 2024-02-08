import 'package:grocery/entities/helpers/named.dart';
import 'package:grocery/entities/value_objects/name.dart';

abstract class ShelveFactory {
  Shelve create(Name name, {int order = 0});
}

abstract class Shelve implements Named {
  int getShelveOrder();
  void setShelveOrder(int order);
}