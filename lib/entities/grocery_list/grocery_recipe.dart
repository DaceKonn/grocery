import '../recipe/recipe.dart';
import '../recipe/recipe_modifier.dart';

abstract class GroceryRecipeFactory {
  GroceryRecipe create(Recipe baseRecipe);
}

abstract class GroceryRecipe {
  Recipe getBaseRecipe();
  RecipeModifier? getSelectedModifier();
  bool hasSelectedRecipeModifier();
  void changeSelectedRecipeModifier(RecipeModifier modifier);
  void removeSelectedRecipeModifier();
}