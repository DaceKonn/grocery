import 'package:grocery/entities/value_objects/name.dart';

abstract class Named {
  Name getName();
  setName(Name newName);
}