import 'package:code_test/domain/entities/product_attribute.entity.dart';

import 'package:code_test/domain/entities/product_image.entity.dart';
import 'package:code_test/domain/entities/prouct_reviews.dart';
import 'package:code_test/domain/entities/rating.dart';
import 'package:code_test/domain/entities/seller.entity.dart';
import 'package:code_test/domain/entities/shipping_info.entity.dart';

class Product {
  final int id;
  final String productName;
  final double productPrice;
  final SellerStore? seller;
  final Ratings? productRating;
  final List<ProductReview>? productReviews;
  final ProductImage images;
  final List<String>? productDescription;
  final ProductAttribute? about;
  final ShippingInformation? shippingInfo;
  final bool? isHearted;

  Product(
      {required this.id,
      required this.productName,
      required this.productPrice,
      this.seller,
      this.productRating,
      this.productReviews,
      required this.images,
      this.productDescription,
      this.about,
      this.shippingInfo,
      this.isHearted});
}
