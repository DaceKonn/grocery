import 'package:flutter/material.dart';

class GroceryListsMainPage extends StatelessWidget {
  const GroceryListsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Listy Zakupów'),
      ),
    );
  }

}