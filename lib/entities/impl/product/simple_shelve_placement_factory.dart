import '../../helpers/validators.dart';
import '../../product/shelve.dart';
import '../../product/shelve_placement.dart';
import 'simple_shelve_placement.dart';

class SimpleShelvePlacementFactory implements ShelvePlacementFactory {
  @override
  ShelvePlacement create(Shelve shelve, {int order = 0}) {
    nonNegativeValidation(order, 'order');
    return SimpleShelvePlacement(shelve, order);
  }
}