import 'package:grocery/entities/product/product.dart';

import '../product_factory.dart';
import 'simple_product.dart';

class SimpleProductFactory implements ProductFactory {
  @override
  Product create(String name) {
    return SimpleProduct(name);
  }

}