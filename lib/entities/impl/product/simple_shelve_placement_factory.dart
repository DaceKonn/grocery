

import 'package:grocery/entities/abstracts/product/shelve.dart';
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';
import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/impl/product/simple_shelve_placement.dart';

class SimpleShelvePlacementFactory implements ShelvePlacementFactory {
  @override
  ShelvePlacement create(Shelve shelve, {int order = 0}) {
    nonNegativeValidation(order, 'order');
    return SimpleShelvePlacement(shelve, order);
  }
}