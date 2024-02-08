import 'package:grocery/entities/abstracts/recipe/source/recipe_source.dart';
import 'package:grocery/entities/impl/recipe/source/page.dart';

class UrlSource implements RecipeSource {
  Page? _sourcePage;
  Uri? _recipeUri;

  Page? getSource() => _sourcePage;
  Uri? getRecipeUri() => _recipeUri;

  set sourcePage(Page value) => _sourcePage = value;

  @override
  RecipeSourceType getType()  => RecipeSourceType.url;

  set recipeUri(Uri value) => _recipeUri = value;
}