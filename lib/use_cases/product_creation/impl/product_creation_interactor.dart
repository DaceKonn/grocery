import 'package:grocery/use_cases/product_creation/product_creation_ds_gateway.dart';

import '../../../entities/product/product.dart';
import '../../../entities/value_objects/name.dart';
import '../product_creation_ports.dart';

class ProductCreationInteractor implements ProductCreationInput {
  final ProductCreationDsGateway _gateway;
  final ProductFactory _factory;

  ProductCreationInteractor(this._gateway, this._factory);

  @override
  ProductCreationOutput create(ProductCreationInputRequest request) {
    Product product = _createValidProduct(request);
    ProductCreationDsResult dsResult = _saveProduct(product);
    ProductCreationOutput output = _getOutput(dsResult);
    return output;
  }

  Product _createValidProduct(ProductCreationInputRequest request) {
    return _factory.create(Name(request.name));
  }

  ProductCreationDsResult _saveProduct(Product product) {
    ProductCreationDsRequestModel dsRequest = ProductCreationDsRequestModel(product.getName().name);
    return _gateway.save(dsRequest);
  }

  ProductCreationOutput _getOutput(ProductCreationDsResult dsResult) {
    ProductCreationOutput output = ProductCreationOutput(dsResult.success);
    return output;
  }
}



