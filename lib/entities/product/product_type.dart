class ProductType {

  static ProductType unknownProductType() {
    var productType = ProductType();
    productType.name = "unknown";
    return productType;
  }

  String? _name;

  String get name => _name ?? "unknown";

  set name(String value) {
    _name = value;
  }
}