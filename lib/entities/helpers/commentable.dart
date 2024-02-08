import '../value_objects/comment.dart';

abstract class Commentable {
  Comment getComment();
  bool hasComment();
  void changeComment(Comment comment);
}