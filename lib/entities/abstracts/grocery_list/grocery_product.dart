import 'package:grocery/entities/abstracts/product/product.dart';
import 'package:grocery/entities/abstracts/recipe/product_amount.dart';
import 'package:grocery/entities/abstracts/recipe/recipe.dart';
import 'package:grocery/entities/abstracts/grocery_list/grocery_recipe.dart';

abstract class GroceryProductFactory {
  GroceryProduct create(Product baseProduct, Set<GroceryRecipe> referencingRecipes);
}

abstract class GroceryProduct {
  Product getBaseProduct();
  Set<GroceryRecipe> getReferencingRecipes();
  void addReferencingRecipe(GroceryRecipe recipe);
  void removeReferencingRecipe(GroceryRecipe recipe);

  List<ProductAmount> getAllAmounts();
  Map<Recipe, ProductAmount> getProductAmountByRecipe();

  ProductAmount getFinalAmount();
  bool hasFinalAmount();
  void setFinalAmount(ProductAmount amount);
  void removeFinalAmount();

  ProductAmount getProposedAmount();
}