import 'book.dart';
import 'page.dart';

abstract class RecipeSource {
  RecipeSourceType getType();
}

enum RecipeSourceType {
  url, book, own, unknown
}

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

class BookSource implements RecipeSource {
  Book? _sourceBook;
  int? _bookPageNumber;

  Book? getBook() => _sourceBook;
  int? getPageNumber() => _bookPageNumber;

  set sourceBook(Book value) => _sourceBook = value;

  @override
  RecipeSourceType getType()  => RecipeSourceType.book;

  set bookPageNumber(int value) => _bookPageNumber = value;
}

class OwnSource implements RecipeSource {
  String? _hint;

  String? getSourceHint() => _hint;
  set hint(String value) => _hint = value;

  @override
  RecipeSourceType getType() => RecipeSourceType.own;
}

class UnknownSource implements RecipeSource {
  @override
  RecipeSourceType getType() => RecipeSourceType.unknown;
}



