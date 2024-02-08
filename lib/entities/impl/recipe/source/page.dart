import 'package:grocery/entities/helpers/named.dart';
import 'package:grocery/entities/helpers/validators.dart';
import 'package:grocery/entities/value_objects/name.dart';

class Page implements Named {
  Name _name;
  Uri? _mainPageUri;

  Page(this._name, {Uri? mainPageUri}) {
    _mainPageUri = mainPageUri;
  }

  @override
  Name getName() => _name;

  @override
  setName(Name newName) {
    isValidValidation(newName, 'newName');
    _name = newName;
  }

  Uri? getMainPageUri() {
    return _mainPageUri;
  }

  void setMainPageUri(Uri mainPageUri) {
    _mainPageUri = mainPageUri;
  }
}