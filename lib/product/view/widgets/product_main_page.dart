import 'package:flutter/material.dart';

class ProductMainPage extends StatelessWidget {
  const ProductMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Produkty'),
      ),
    );
  }

}