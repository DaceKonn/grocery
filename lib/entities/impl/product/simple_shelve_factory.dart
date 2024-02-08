import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/impl/product/simple_shelve.dart';
import 'package:grocery/entities/product/shelve.dart';
import 'package:grocery/entities/value_objects/name.dart';

class SimpleShelveFactory implements ShelveFactory {
  @override
  Shelve create(Name name, {int order = 0}) {
    isValidValidation(name, 'name');
    nonNegativeValidation(order, 'order');
    return SimpleShelve(name, order: order);
  }

}