import 'package:grocery/entities/helpers/commentable.dart';
import 'package:grocery/entities/recipe/source/recipe_source.dart';
import '../helpers/named.dart';
import '../product/product.dart';
import '../value_objects/name.dart';
import 'recipe_modifier.dart';
import 'recipe_product.dart';

abstract class RecipeFactory {
  Recipe create(Name name);
}

abstract class Recipe implements Named, Commentable {
  RecipeSource getRecipeSource();
  void setRecipeSource(RecipeSource source);

  Set<RecipeProduct> getProducts();
  void addProduct(RecipeProduct recipeProduct);
  void removeProduct(Product product);
  bool hasProducts();

  Set<Recipe> getSubRecipes();
  bool hasSubRecipes();
  void linkRecipe(Recipe recipe);
  void unlinkRecipe(Recipe recipe);

  Set<RecipeModifier> getModifiers();
  bool hasModifiers();
  void addModifier(RecipeModifier modifier);
  void removeModifier(RecipeModifier modifier);
}