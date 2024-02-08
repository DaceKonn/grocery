import '../helpers/named.dart';
import '../value_objects/name.dart';
import 'shelve_placement.dart';

abstract class ProductFactory {
  Product create(Name name, {ShelvePlacement? shelvePlacement});
}

abstract class Product implements Named {
  ShelvePlacement getShelvePlacement();
  void setShelvePlacement(ShelvePlacement shelvePlacement);
}