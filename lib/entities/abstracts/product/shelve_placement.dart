import 'package:grocery/entities/abstracts/product/shelve.dart';

abstract class ShelvePlacementFactory {
  ShelvePlacement create(Shelve shelve, {int order = 0});
}

abstract class ShelvePlacement {
  Shelve getShelve();
  int getPlacementOrder();
  ShelvePlacement setShelve(Shelve shelve);
  ShelvePlacement setPlacementOrder(int order);
}