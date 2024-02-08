

import 'package:grocery/entities/product/shelve_placement.dart';

import 'package:grocery/entities/value_objects/name.dart';

import '../../helpers/validators.dart';
import '../../product/product.dart';

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