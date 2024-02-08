abstract class RecipeSource {
  RecipeSourceType getType();
}

enum RecipeSourceType {
  url, book, own, unknown
}
