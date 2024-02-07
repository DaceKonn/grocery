import 'package:grocery/interface/product/creation/impl/product_creation_presenter.dart';
import 'package:grocery/use_cases/product_creation/product_creation_ports.dart';

abstract class ProductCreationController {
  ProductCreationResult create(ProductCreationRequest request);
}

class ProductCreationRequest {
  String name;

  ProductCreationRequest(this.name);
}

class ProductCreationResult {
  bool success;

  ProductCreationResult(this.success);
}