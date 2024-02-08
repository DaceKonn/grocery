import '../helpers/validators.dart';
import 'shelve.dart';

class ShelvePlacementFactory {
  ShelvePlacement create(Shelve shelve, {int order = 0}) {
    nonNegativeValidation(order, 'order');
    return ShelvePlacement(shelve, order);
  }
}

class ShelvePlacement {
  Shelve shelve;
  int order;

  ShelvePlacement(this.shelve, this.order);

  Shelve getShelve() => shelve;
  int getPlacementOrder() => order;

  ShelvePlacement setShelve(Shelve shelve) {
    this.shelve = shelve;
    return this;
  }

  ShelvePlacement setPlacementOrder(int order) {
    nonNegativeValidation(order, 'order');
    this.order = order;
    return this;
  }
}