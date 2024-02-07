import '../../../../use_cases/product_creation/product_creation_ports.dart';
import '../product_creation_controller.dart';

class ProductCreationPresenter {
  ProductCreationResult process(ProductCreationOutput output) {
    return ProductCreationResult(true);
  }
}

