import 'package:grocery/entities/abstracts/recipe/source/recipe_source.dart';

class UnknownSource implements RecipeSource {
  @override
  RecipeSourceType getType() => RecipeSourceType.unknown;
}