import 'package:grocery/entities/abstracts/grocery_list/grocery_product.dart';
import 'package:grocery/entities/abstracts/grocery_list/grocery_recipe.dart';
import 'package:grocery/entities/abstracts/product/shelve.dart';
import 'package:grocery/entities/abstracts/recipe/recipe.dart';
import 'package:grocery/entities/helpers/commentable.dart';
import 'package:grocery/entities/helpers/named.dart';

abstract class GroceryListFactory {
  GroceryList create(String name);
}

abstract class GroceryList implements Named, Commentable {
  Set<GroceryRecipe> getRecipes();
  void addRecipe(GroceryRecipe recipe);
  void removeRecipe(Recipe recipe);

  Map<Shelve, Set<GroceryProduct>> getProductsByShelves();
}