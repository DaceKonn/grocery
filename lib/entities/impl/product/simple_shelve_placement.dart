import '../../helpers/validators.dart';
import '../../product/shelve.dart';
import '../../product/shelve_placement.dart';

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