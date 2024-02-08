import 'package:grocery/entities/helpers/validators.dart';

import '../helpers/validatable.dart';

class Name implements Validatable {
  final String name;
  Name(this.name);
  
  @override
  bool isValid() {
    return stringNotBlank(name);
  }
}