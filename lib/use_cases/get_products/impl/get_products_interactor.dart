import '../get_product_ports.dart';
import '../get_products_ds_gateway.dart';

class GetProductsInteractor implements GetProductsInput {

  final GetProductsDsGateway _gateway;

  GetProductsInteractor(this._gateway);

  @override
  List<ProductOutput> get() {
    var products = getProducts();
    var output = getOutput(products);
    return output;
  }

  List<DsProduct> getProducts() {
    return _gateway.getProducts();
  }

  List<ProductOutput> getOutput(List<DsProduct> products) {
    return products.map((e) => ProductOutput(e.name)).toList(growable: false);
  }
}