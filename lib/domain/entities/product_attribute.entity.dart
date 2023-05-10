import 'package:code_test/core/constants/enums.dart';

class ProductAttribute {
  final String? brand;
  final ProductSubCategory? category;
  final ProductCondition? condition;
  final String? color;
  final String? material;
  final String? weight;
  ProductAttribute(
      {this.brand,
      this.category,
      this.condition,
      this.color,
      this.material,
      this.weight});
}
