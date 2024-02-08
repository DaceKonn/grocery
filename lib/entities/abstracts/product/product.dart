
import 'package:grocery/entities/abstracts/product/shelve_placement.dart';
import 'package:grocery/entities/helpers/named.dart';
import 'package:grocery/entities/value_objects/name.dart';

abstract class ProductFactory {
  Product create(Name name, {ShelvePlacement? shelvePlacement});
}

abstract class Product implements Named {
  ShelvePlacement getShelvePlacement();
  void setShelvePlacement(ShelvePlacement shelvePlacement);
}