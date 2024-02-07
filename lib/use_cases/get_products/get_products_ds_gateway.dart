abstract class GetProductsDsGateway {
  List<DsProduct> getProducts();
}

class DsProduct {
  String name;

  DsProduct(this.name);
}