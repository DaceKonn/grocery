import 'package:grocery/interface/product/get/impl/get_product_presenter.dart';
import 'package:grocery/use_cases/get_products/get_product_ports.dart';

import '../get_product_controller.dart';

class GetProductControllerImpl implements GetProductController {
  final GetProductsInput _input;
  final GetProductPresenter _presenter;

  GetProductControllerImpl(this._input, this._presenter);

  @override
  List<ProductResult> getProducts() {
    var productsOutput = _input.get();
    return _presenter.process(productsOutput);
  }

}