import 'package:code_test/domain/entities/product.entity.dart';

Product showProductDetails(List<Product> products, String pid) {
  return products.where((product) => product.id.toString() == pid).first;
}
