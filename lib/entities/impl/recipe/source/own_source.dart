import 'package:grocery/entities/abstracts/recipe/source/recipe_source.dart';

class OwnSource implements RecipeSource {
  String? _hint;

  String? getSourceHint() => _hint;
  set hint(String value) => _hint = value;

  @override
  RecipeSourceType getType() => RecipeSourceType.own;
}