import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/value_objects/name.dart';

import '../../product/shelve.dart';

class SimpleShelve implements Shelve {
  Name _name;
  int _order = 0;

  SimpleShelve(this._name, {int order = 0}) {
    _order = order;
  }

  @override
  Name getName() => _name;

  @override
  int getShelveOrder() => _order;

  @override
  setName(Name newName) {
    isValidValidation(newName, 'newName');
    _name = newName;
  }

  @override
  void setShelveOrder(int order) {
    nonNegativeValidation(order, 'order');
    _order = order;
  }

}