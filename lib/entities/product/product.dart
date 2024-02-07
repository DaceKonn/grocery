import 'product_type.dart';

class Product {
  String? _name;
  ProductType? _type;

  String get name => _name ?? "unknown";

  set name(String value) {
    _name = value;
  }

  ProductType get type => _type ?? ProductType.unknownProductType();

  set type(ProductType value) {
    _type = value;
  }
}