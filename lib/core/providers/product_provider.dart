import 'package:code_test/core/helpers/products.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:code_test/domain/entities/product_attribute.entity.dart';
import 'package:code_test/domain/entities/product_image.entity.dart';
import 'package:code_test/domain/entities/seller.entity.dart';
import 'package:code_test/domain/entities/shipping_info.entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedProductProvider extends StateNotifier<Product?> {
  SelectedProductProvider() : super(null);

  void selectProduct(Product p) => state = p;
}

final selectedProductProvider =
    StateNotifierProvider<SelectedProductProvider, Product?>(
        (ref) => SelectedProductProvider());

final generateProductList = FutureProvider((ref) {
  final List<Product> products = [];
  for (int i = 0; i <= 50; i++) {
    products.add(
      Product(
        id: i,
        productName: getRandomResult<String>(productNames),
        productPrice: getRandomResult<double>(productPrices),
        images: getRandomResult<ProductImage>(productImages),
        seller: getRandomResult<SellerStore>(sellerStores),

// productRating: getRandomResult<Ratings>(Rating),
        productReviews: productReviews,
        productDescription: getRandomResult<List<String>>(clothingDescriptions),
        about: getRandomResult<ProductAttribute>(productsAttributes),
        shippingInfo: getRandomResult<ShippingInformation>(shipping),
        isHearted: getRandomResult<bool>(booleanList),
      ),
    );
  }

  return products;
});
