import '../value_objects/name.dart';
import 'validatable.dart';

abstract class Named {
  Name getName();
  setName(Name newName);
}