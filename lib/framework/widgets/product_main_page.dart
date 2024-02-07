import 'package:flutter/material.dart';
import 'package:grocery/interface/product/get/get_product_controller.dart';

import '../dependency_registry.dart';

class ProductsListWidget extends StatefulWidget {
  const ProductsListWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ProductsListState();

}

class _ProductsListState extends State<ProductsListWidget> {
  late GetProductController _controller;
  late List<ProductResult> products;

  @override
  void initState() {
    _controller = locator<GetProductController>();
    products = _controller.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Produkty'),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(products[index].name)
            );
          }),
    );
  }

}