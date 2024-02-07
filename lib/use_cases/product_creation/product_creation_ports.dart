abstract class ProductCreationInput {
  ProductCreationOutput create(ProductCreationInputRequest request);
}

class ProductCreationOutput {
  bool success;

  ProductCreationOutput(this.success);
}

class ProductCreationInputRequest {
  String name;

  ProductCreationInputRequest(this.name);
}