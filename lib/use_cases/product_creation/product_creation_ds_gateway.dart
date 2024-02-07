abstract class ProductCreationDsGateway {
  ProductCreationDsResult save(ProductCreationDsRequestModel request);
}

class ProductCreationDsRequestModel {
  String name;

  ProductCreationDsRequestModel(this.name);
}

class ProductCreationDsResult {
  bool success;

  ProductCreationDsResult(this.success);
}