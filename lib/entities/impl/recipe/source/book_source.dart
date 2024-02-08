import '../../../recipe/source/recipe_source.dart';
import 'book.dart';

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