import 'package:grocery/entities/helpers/validatable.dart';
import 'package:grocery/entities/helpers/validators.dart';

class Name implements Validatable {
  final String name;
  Name(this.name);

  static Name unknown() => Name("unknown");

  @override
  bool isValid() {
    return stringNotBlank(name);
  }
}