import 'package:grocery/entities/recipe/product_amount.dart';

import '../helpers/commentable.dart';
import '../helpers/named.dart';
import '../product/product.dart';
import '../recipe/recipe.dart';
import '../recipe/recipe_modifier.dart';
import '../product/shelve.dart';
import 'grocery_product.dart';
import 'grocery_recipe.dart';

abstract class GroceryListFactory {
  GroceryList create(String name);
}

abstract class GroceryList implements Named, Commentable {
  Set<GroceryRecipe> getRecipes();
  void addRecipe(GroceryRecipe recipe);
  void removeRecipe(Recipe recipe);

  Map<Shelve, Set<GroceryProduct>> getProductsByShelves();
}