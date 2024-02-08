import 'package:grocery/entities/abstracts/recipe/product_amount.dart';

class UnknownProductAmount implements ProductAmount {
  @override
  bool canAdd(ProductAmount amount) => amount.getType() == ProductAmountType.unknown;

  @override
  ProductAmountType getType() => ProductAmountType.unknown;

  @override
  String getValueAsString() => '---';

}