import 'package:grocery/entities/recipe/product_amount.dart';

import '../helpers/commentable.dart';
import '../helpers/named.dart';
import '../product/product.dart';
import '../value_objects/name.dart';
import 'recipe.dart';
import 'recipe_product.dart';

abstract class RecipeModifierFactory {
  RecipeModifier create(Name name, Recipe baseRecipe);
}

abstract class RecipeModifier implements Named, Commentable {
  Recipe getBaseRecipe();

  Set<Product> getHiddenProducts();
  bool hasHiddenProducts();
  void hideProduct(Product product);
  void showProduct(Product product);

  Set<RecipeProduct> getAddedProducts();
  bool hasAddedProducts();
  void addProduct(Product product, {ProductAmount amount});
  void addAlternativeProduct(Product baseProduct, Product alternativeProduct, {ProductAmount amount});
  void removeAlternativeProduct(Product baseProduct, Product alternativeProduct);
  void removeAddedProduct(Product product);
  void changeProductAmount(Product product, ProductAmount amount);

  Set<Recipe> getHiddenSubRecipes();
  bool hasHiddenSubRecipes();
  void hideSubRecipe(Recipe recipe);
  void showSubRecipe(Recipe recipe);

  Set<Recipe> getAddedSubRecipes();
  bool hasAddedSubRecipes();
  void addSubRecipe(Recipe recipe);
  void removeAddedSubRecipe(Recipe recipe);

  Set<RecipeProduct> getFinalProducts();
}