import 'package:grocery/entities/helpers/validators.dart';

import '../../../recipe/product_amount.dart';

class CountableProductAmount implements ProductAmount {
  int _count = 0;

  CountableProductAmount({int count = 0}) {
    _count = count;
  }

  int getCount() => _count;

  void setCount(int count){
    nonNegativeValidation(count, 'count');
    _count = count;
  }

  CountableProductAmount getSum(CountableProductAmount amount) {
    return CountableProductAmount(count: _count + amount.getCount());
  }

  @override
  bool canAdd(ProductAmount amount) => amount.getType() == ProductAmountType.count;

  @override
  ProductAmountType getType() => ProductAmountType.count;

  @override
  String getValueAsString() => _count.toString();

}