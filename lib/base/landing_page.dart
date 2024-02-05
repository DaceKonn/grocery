import 'package:flutter/material.dart';
import 'package:grocery/grocery_list/widgets/grocery_lists_main_page.dart';
import 'package:grocery/product/widgets/product_main_page.dart';
import 'package:grocery/recipe/widgets/recipe_main_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery!'),
      ),
      body: Center(
        child: Column(
          children: [
            goToRecipesButton(context),
            goToProductsButton(context),
            goToGroceryListsButton(context)
          ],
        ),
      ),
    );
  }

  ElevatedButton goToRecipesButton(BuildContext context) {
    return ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipeMainPage()));
    }, child: const Text('Przepisy'));
  }

  ElevatedButton goToProductsButton(BuildContext context) {
    return ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductMainPage()));
    }, child: const Text('Produkty'));
  }

  ElevatedButton goToGroceryListsButton(BuildContext context) {
    return ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const GroceryListsMainPage()));
    }, child: const Text('Listy Zakupów'));
  }

}