

import '../../../../use_cases/product_creation/product_creation_ports.dart';
import '../product_creation_controller.dart';
import 'product_creation_presenter.dart';

class ProductCreationControllerImpl implements ProductCreationController {
  final ProductCreationInput _input;
  final ProductCreationPresenter _presenter;

  ProductCreationControllerImpl(this._input, this._presenter);

  @override
  ProductCreationResult create(ProductCreationRequest request) {
    ProductCreationInputRequest inputRequest = ProductCreationInputRequest(request.name);
    var output = _input.create(inputRequest);
    return _presenter.process(output);
  }
}