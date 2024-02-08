import '../helpers/named.dart';
import '../value_objects/name.dart';

abstract class ShelveFactory {
  Shelve create(Name name);
}

abstract class Shelve implements Named {
  int getShelveOrder();
  void setShelveOrder(int order);
  void editShelveName(Name name);
}