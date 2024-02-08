abstract class ProductAmount {
  String getValueAsString();
  ProductAmountType getType();
  bool canAdd(ProductAmount amount);
}

enum ProductAmountType {
  unknown, weight, count, volume, fuzzy, length
}