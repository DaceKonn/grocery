

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