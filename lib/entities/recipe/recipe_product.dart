import '../product/product.dart';
import 'product_amount.dart';

abstract class RecipeProductFactory {
  RecipeProduct create(Product product, {ProductAmount amount});
}

abstract class RecipeProduct {
  Product getProduct();
  ProductAmount getProductAmount();
  RecipeProduct setProductAmount(ProductAmount amount);
  Set<RecipeProduct> getAlternatives();
  bool hasAlternatives();

  RecipeProduct addAlternativeProduct(RecipeProduct product);
  RecipeProduct removeAlternativeProduct(Product alternativeProduct);

}