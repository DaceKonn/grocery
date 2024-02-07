import 'package:grocery/entities/product/product.dart';

class SimpleProduct implements Product {

  String _name;

  SimpleProduct(this._name);

  @override
  String getName() {
    return _name;
  }

}