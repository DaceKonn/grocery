
import 'package:grocery/entities/abstracts/product/product.dart';
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';
import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/value_objects/name.dart';

class SimpleProduct implements Product {
  Name _name;
  ShelvePlacement _shelvePlacement;

  SimpleProduct(this._name, this._shelvePlacement);

  @override
  Name getName() => _name;

  @override
  ShelvePlacement getShelvePlacement() => _shelvePlacement;

  @override
  setName(Name newName) {
    isValidValidation(newName, 'newName');
    _name = newName;
  }

  @override
  setShelvePlacement(ShelvePlacement shelvePlacement) =>
      _shelvePlacement = shelvePlacement;

}