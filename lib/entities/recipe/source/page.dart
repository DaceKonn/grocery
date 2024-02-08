import '../../helpers/named.dart';
import '../../helpers/validators.dart';
import '../../value_objects/name.dart';

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