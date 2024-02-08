import 'package:grocery/entities/helpers/named.dart';
import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/value_objects/name.dart';

class Book implements Named {
  Name _name;

  Book(this._name);

  @override
  Name getName() => _name;

  @override
  setName(Name newName) {
    isValidValidation(newName, 'newName');
    _name = newName;
  }

}