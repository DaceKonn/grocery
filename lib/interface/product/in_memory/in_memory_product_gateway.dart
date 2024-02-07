import 'package:grocery/use_cases/get_products/get_products_ds_gateway.dart';
import 'package:grocery/use_cases/product_creation/product_creation_ds_gateway.dart';
import 'in_memory_product_repository.dart';
import 'in_memory_product.dart';

class InMemoryProductGateway implements ProductCreationDsGateway, GetProductsDsGateway {

  final InMemoryProductRepository _repository;

  InMemoryProductGateway(this._repository);

  @override
  ProductCreationDsResult save(ProductCreationDsRequestModel request) {
    _repository.save(InMemoryProduct(request.name));
    return ProductCreationDsResult(true);
  }

  @override
  List<DsProduct> getProducts() {
    List<InMemoryProduct> products = _repository.getAll();
    return products.map((e) => DsProduct(e.name)).toList(growable: false);
  }

}