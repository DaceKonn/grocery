abstract class GetProductsInput {
  List<ProductOutput> get();
}

class ProductOutput {
  String name;

  ProductOutput(this.name);
}