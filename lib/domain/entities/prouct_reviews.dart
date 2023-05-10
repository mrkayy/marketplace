import 'package:code_test/domain/entities/rating.dart';
import 'package:code_test/domain/entities/seller.entity.dart';
import 'package:code_test/domain/entities/user.entity.dart';

class ProductReview {
  final String? review;
  final int? reviewCount;
  final SellerStore? seller;
  final User? reviewBy;
  final Ratings? rating;
  final List<String>? images;

  ProductReview(
      {this.rating,
      this.review,
      this.reviewBy,
      this.reviewCount,
      this.seller,
      this.images});
}
