import '../helpers/named.dart';
import '../value_objects/name.dart';
import 'shelve_placement.dart';

abstract class ProductFactory {
  Product create(Name name);
}

abstract class Product implements Named {
  ShelvePlacement getShelvePlacement();
  Product setShelvePlacement(ShelvePlacement shelvePlacement);
}