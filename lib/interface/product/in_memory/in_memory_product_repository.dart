import 'in_memory_product.dart';

class InMemoryProductRepository {

  List<InMemoryProduct> products = [];


  InMemoryProductRepository() {
    products.add(InMemoryProduct('paprika'));
    products.add(InMemoryProduct('onion'));
    products.add(InMemoryProduct('tomato'));
  }

  void save(InMemoryProduct inMemoryProduct) {
    products.add(inMemoryProduct);
    return;
  }

  List<InMemoryProduct> getAll() {
    return products;
  }

}