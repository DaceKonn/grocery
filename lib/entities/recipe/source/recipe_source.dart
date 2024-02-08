import '../../impl/recipe/source/book.dart';
import '../../impl/recipe/source/page.dart';

abstract class RecipeSource {
  RecipeSourceType getType();
}

enum RecipeSourceType {
  url, book, own, unknown
}
