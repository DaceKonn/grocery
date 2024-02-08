import 'package:grocery/entities/helpers/validatable.dart';

void nonNegativeValidation(int value, String fieldName) {
  if (value < 0) {
    throw ArgumentError('Value can not be negative', fieldName);
  }
}

void isValidValidation(Validatable value, String fieldName) {
  if (!value.isValid()) {
    throw ArgumentError('Needs to be a valid value', fieldName);
  }
}

bool stringNotBlank(String value){
  return value.trim().isNotEmpty;
}

bool stringNotNullOrBlankCheck(String? value) {
  return value != null && stringNotBlank(value);
}