import 'package:grocery/entities/helpers/commentable.dart';
import 'package:grocery/entities/helpers/named.dart';
import 'package:grocery/entities/value_objects/name.dart';
import 'package:grocery/entities/abstracts/product/product.dart';
import 'package:grocery/entities/abstracts/recipe/recipe_modifier.dart';
import 'package:grocery/entities/abstracts/recipe/recipe_product.dart';
import 'package:grocery/entities/abstracts/recipe/source/recipe_source.dart';

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