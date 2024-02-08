

import 'package:grocery/entities/abstracts/product/shelve.dart';
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';
import 'package:grocery/entities/helpers/validators.dart';

class SimpleShelvePlacement implements ShelvePlacement {
  Shelve shelve;
  int order;

  SimpleShelvePlacement(this.shelve, this.order);

  @override
  Shelve getShelve() => shelve;
  @override
  int getPlacementOrder() => order;

  @override
  SimpleShelvePlacement setShelve(Shelve shelve) {
    this.shelve = shelve;
    return this;
  }

  @override
  SimpleShelvePlacement setPlacementOrder(int order) {
    nonNegativeValidation(order, 'order');
    this.order = order;
    return this;
  }
}