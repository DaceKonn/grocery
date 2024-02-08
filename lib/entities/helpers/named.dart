import 'package:grocery/entities/value_objects/name.dart';
import 'package:grocery/entities/helpers/validatable.dart';

abstract class Named {
  Name getName();
  setName(Name newName);
}