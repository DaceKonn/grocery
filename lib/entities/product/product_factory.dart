import 'product.dart';

abstract class ProductFactory {
  Product create(String name);
}