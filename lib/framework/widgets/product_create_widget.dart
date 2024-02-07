import 'package:flutter/material.dart';
import 'package:grocery/interface/product/creation/product_creation_controller.dart';
import '../dependency_registry.dart';

class ProductCreateWidget extends StatefulWidget {
  const ProductCreateWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ProductCreateState();
}

class _ProductCreateState extends State<ProductCreateWidget> {
  late ProductCreationController _controller;

  @override
  void initState() {
    _controller = locator<ProductCreationController>();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}