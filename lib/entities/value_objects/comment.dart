import 'package:grocery/entities/helpers/validators.dart';

class Comment {
  String value;

  Comment({this.value = ""});

  bool hasValue() {
    return stringNotBlank(value);
  }
}