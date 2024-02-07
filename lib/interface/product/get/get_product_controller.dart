abstract class GetProductController {
  List<ProductResult> getProducts();
}

class ProductResult {
  String name;

  ProductResult(this.name);
}