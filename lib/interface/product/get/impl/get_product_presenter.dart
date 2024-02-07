import 'package:grocery/interface/product/get/get_product_controller.dart';
import 'package:grocery/use_cases/get_products/get_product_ports.dart';

class GetProductPresenter {
  List<ProductResult> process(List<ProductOutput> productsOutput) {
    return productsOutput.map((e) => ProductResult(e.name)).toList(growable: false);
  }

}