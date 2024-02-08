
import 'package:grocery/entities/abstracts/product/product.dart';
import 'package:grocery/entities/abstracts/product/shelve.dart';
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';
import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/value_objects/name.dart';
import 'package:grocery/entities/impl/product/simple_product.dart';

class SimpleProductFactory implements ProductFactory {
  final ShelveFactory _shelveFactory;
  final ShelvePlacementFactory _shelvePlacementFactory;

  SimpleProductFactory(this._shelveFactory, this._shelvePlacementFactory);

  @override
  Product create(Name name, {ShelvePlacement? shelvePlacement}) {
    isValidValidation(name, 'name');
    ensureShelvePlacement(shelvePlacement);
    return SimpleProduct(name, shelvePlacement!);
  }

  void ensureShelvePlacement(ShelvePlacement? shelvePlacement) {
    if (shelvePlacement == null) {
      var shelve = _shelveFactory.create(Name.unknown(), order: 0);
      shelvePlacement = _shelvePlacementFactory.create(shelve, order: 0);
    }
  }

}