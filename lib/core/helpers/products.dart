import 'dart:math';

import 'package:code_test/core/constants/enums.dart';
import 'package:code_test/core/constants/image_assets.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:code_test/domain/entities/product_attribute.entity.dart';
import 'package:code_test/domain/entities/product_image.entity.dart';
import 'package:code_test/domain/entities/rating.dart';
import 'package:code_test/domain/entities/seller.entity.dart';
import 'package:code_test/domain/entities/shipping_info.entity.dart';

List<Product> products = [
  
];

final List<ProductAttribute> productsAttributes = [
  ProductAttribute(
    brand: 'Adidas',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.banchNew,
    color: 'Blue',
    material: 'Cotton',
    weight: '200g',
  ),
  ProductAttribute(
    brand: 'Nike',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.refurbished,
    color: 'Black',
    material: 'Leather',
    weight: '300g',
  ),
  ProductAttribute(
    brand: "Levi's",
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Gray',
    material: 'Denim',
    weight: '400g',
  ),
  ProductAttribute(
    brand: 'Puma',
    category: ProductSubCategory.sweatShirt,
    condition: ProductCondition.old,
    color: 'Red',
    material: 'Polyester',
    weight: '250g',
  ),
  ProductAttribute(
    brand: 'Gucci',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.refurbished,
    color: 'White',
    material: 'Silk',
    weight: '180g',
  ),
  ProductAttribute(
    brand: 'Calvin Klein',
    category: ProductSubCategory.tshirt,
    condition: ProductCondition.banchNew,
    color: 'Green',
    material: 'Cotton',
    weight: '150g',
  ),
  ProductAttribute(
    brand: 'Tommy Hilfiger',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.old,
    color: 'Brown',
    material: 'Suede',
    weight: '350g',
  ),
  ProductAttribute(
    brand: 'H&M',
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Black',
    material: 'Cotton',
    weight: '300g',
  ),
  ProductAttribute(
    brand: 'Burberry',
    category: ProductSubCategory.sweatShirt,
    condition: ProductCondition.refurbished,
    color: 'Blue',
    material: 'Wool',
    weight: '280g',
  ),
  ProductAttribute(
    brand: 'Zara',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.banchNew,
    color: 'Gray',
    material: 'Linen',
    weight: '200g',
  ),
  ProductAttribute(
    brand: 'Ralph Lauren',
    category: ProductSubCategory.tshirt,
    condition: ProductCondition.old,
    color: 'Red',
    material: 'Cotton',
    weight: '160g',
  ),
  ProductAttribute(
    brand: 'Reebok',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.refurbished,
    color: 'White',
    material: 'Synthetic',
    weight: '280g',
  ),
  ProductAttribute(
    brand: 'Armani',
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Brown',
    material: 'Polyester',
    weight: '320g',
  ),
  ProductAttribute(
      brand: 'Champion',
      category: ProductSubCategory.sweatShirt,
      condition: ProductCondition.old,
      color: 'Black',
      material: 'Fleece',
      weight: '120g'),
  ProductAttribute(
    brand: 'Adidas',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.banchNew,
    color: 'Blue',
    material: 'Cotton',
    weight: '200g',
  ),
  ProductAttribute(
    brand: 'Nike',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.refurbished,
    color: 'Black',
    material: 'Leather',
    weight: '300g',
  ),
  ProductAttribute(
    brand: "Levi's",
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Gray',
    material: 'Denim',
    weight: '400g',
  ),
  ProductAttribute(
    brand: 'Puma',
    category: ProductSubCategory.sweatShirt,
    condition: ProductCondition.old,
    color: 'Red',
    material: 'Polyester',
    weight: '250g',
  ),
  ProductAttribute(
    brand: 'Gucci',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.refurbished,
    color: 'White',
    material: 'Silk',
    weight: '180g',
  ),
  ProductAttribute(
    brand: 'Calvin Klein',
    category: ProductSubCategory.tshirt,
    condition: ProductCondition.banchNew,
    color: 'Green',
    material: 'Cotton',
    weight: '150g',
  ),
  ProductAttribute(
    brand: 'Tommy Hilfiger',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.old,
    color: 'Brown',
    material: 'Suede',
    weight: '350g',
  ),
  ProductAttribute(
    brand: 'H&M',
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Black',
    material: 'Cotton',
    weight: '300g',
  ),
  ProductAttribute(
    brand: 'Burberry',
    category: ProductSubCategory.sweatShirt,
    condition: ProductCondition.refurbished,
    color: 'Blue',
    material: 'Wool',
    weight: '280g',
  ),
  ProductAttribute(
    brand: 'Zara',
    category: ProductSubCategory.casualShirt,
    condition: ProductCondition.banchNew,
    color: 'Gray',
    material: 'Linen',
    weight: '200g',
  ),
  ProductAttribute(
    brand: 'Ralph Lauren',
    category: ProductSubCategory.tshirt,
    condition: ProductCondition.old,
    color: 'Red',
    material: 'Cotton',
    weight: '160g',
  ),
  ProductAttribute(
    brand: 'Reebok',
    category: ProductSubCategory.shoes,
    condition: ProductCondition.refurbished,
    color: 'White',
    material: 'Synthetic',
    weight: '280g',
  ),
  ProductAttribute(
    brand: 'Armani',
    category: ProductSubCategory.pants,
    condition: ProductCondition.banchNew,
    color: 'Brown',
    material: 'Polyester',
    weight: '320g',
  ),
  ProductAttribute(
    brand: 'Champion',
    category: ProductSubCategory.sweatShirt,
    condition: ProductCondition.old,
    color: 'Black',
    material: 'Fleece',
    weight: '230g',
  ),
];

final List<SellerStore> sellerStores = [
  SellerStore(
    sellerId: 1,
    storeName: 'Fashion Trends',
    storeImage: 'https://example.com/fashion-trends.jpg',
    storeLink: 'https://example.com/fashion-trends',
    feedback: 'Great customer service and fast shipping!',
  ),
  SellerStore(
    sellerId: 2,
    storeName: 'Shoe Empire',
    storeImage: 'https://example.com/shoe-empire.jpg',
    storeLink: 'https://example.com/shoe-empire',
    feedback: 'High-quality shoes and excellent prices.',
  ),
  SellerStore(
    sellerId: 3,
    storeName: 'Fashion World',
    storeImage: 'https://example.com/fashion-world.jpg',
    storeLink: 'https://example.com/fashion-world',
    feedback: 'Love the variety of clothing options available.',
  ),
  SellerStore(
    sellerId: 4,
    storeName: 'Sports Gear',
    storeImage: 'https://example.com/sports-gear.jpg',
    storeLink: 'https://example.com/sports-gear',
    feedback: 'Best place to shop for athletic apparel.',
  ),
  SellerStore(
    sellerId: 5,
    storeName: 'Trendy Accessories',
    storeImage: 'https://example.com/trendy-accessories.jpg',
    storeLink: 'https://example.com/trendy-accessories',
    feedback: 'Always find unique and stylish accessories here.',
  ),
  SellerStore(
    sellerId: 6,
    storeName: 'Fashion Plus',
    storeImage: 'https://example.com/fashion-plus.jpg',
    storeLink: 'https://example.com/fashion-plus',
    feedback: 'Great deals and fashionable clothing.',
  ),
  SellerStore(
    sellerId: 7,
    storeName: 'Footwear Paradise',
    storeImage: 'https://example.com/footwear-paradise.jpg',
    storeLink: 'https://example.com/footwear-paradise',
    feedback: 'Wide range of shoes to choose from.',
  ),
  SellerStore(
    sellerId: 8,
    storeName: 'Trendsetters',
    storeImage: 'https://example.com/trendsetters.jpg',
    storeLink: 'https://example.com/trendsetters',
    feedback: 'Always up-to-date with the latest fashion trends.',
  ),
  SellerStore(
    sellerId: 9,
    storeName: 'Casual Chic',
    storeImage: 'https://example.com/casual-chic.jpg',
    storeLink: 'https://example.com/casual-chic',
    feedback: 'Love the casual and comfortable clothing options.',
  ),
  SellerStore(
    sellerId: 10,
    storeName: 'Elegant Styles',
    storeImage: 'https://example.com/elegant-styles.jpg',
    storeLink: 'https://example.com/elegant-styles',
    feedback: 'Classy and elegant clothing for special occasions.',
  ),
  SellerStore(
    sellerId: 11,
    storeName: 'Urban Streetwear',
    storeImage: 'https://example.com/urban-streetwear.jpg',
    storeLink: 'https://example.com/urban-streetwear',
    feedback: 'Perfect place to find trendy streetwear.',
  ),
  SellerStore(
    sellerId: 12,
    storeName: 'Denim Delight',
    storeImage: 'https://example.com/denim-delight.jpg',
    storeLink: 'https://example.com/elegant-styles',
    feedback: 'Classy and elegant clothing for special occasions.',
  ),
  SellerStore(
    sellerId: 13,
    storeName: 'Active Wear',
    storeImage: 'https://example.com/active-wear.jpg',
    storeLink: 'https://example.com/active-wear',
    feedback: 'Great selection of workout clothes and accessories.',
  ),
  SellerStore(
    sellerId: 14,
    storeName: 'Vintage Vibes',
    storeImage: 'https://example.com/vintage-vibes.jpg',
    storeLink: 'https://example.com/vintage-vibes',
    feedback: 'Love the unique vintage pieces available.',
  ),
  SellerStore(
    sellerId: 15,
    storeName: 'Trendy Kids',
    storeImage: 'https://example.com/trendy-kids.jpg',
    storeLink: 'https://example.com/trendy-kids',
    feedback: 'Adorable and fashionable clothing for kids.',
  ),
  SellerStore(
    sellerId: 16,
    storeName: 'Sneaker Spot',
    storeImage: 'https://example.com/sneaker-spot.jpg',
    storeLink: 'https://example.com/sneaker-spot',
    feedback: 'Huge collection of sneakers for sneakerheads.',
  ),
  SellerStore(
    sellerId: 17,
    storeName: 'Fashion Accessories',
    storeImage: 'https://example.com/fashion-accessories.jpg',
    storeLink: 'https://example.com/fashion-accessories',
    feedback: 'Great variety of trendy accessories for every outfit.',
  ),
  SellerStore(
    sellerId: 18,
    storeName: 'Formal Attire',
    storeImage: 'https://example.com/formal-attire.jpg',
    storeLink: 'https://example.com/formal-attire',
    feedback: 'High-quality formal wear for special occasions.',
  ),
  SellerStore(
    sellerId: 19,
    storeName: 'Cozy Comforts',
    storeImage: 'https://example.com/cozy-comforts.jpg',
    storeLink: 'https://example.com/cozy-comforts',
    feedback: 'Soft and comfortable clothing for lounging.',
  ),
  SellerStore(
    sellerId: 20,
    storeName: 'Trendy Hats',
    storeImage: 'https://example.com/trendy-hats.jpg',
    storeLink: 'https://example.com/trendy-hats',
    feedback: 'Wide range of stylish hats to complete your look.',
  ),
];

final List<PointsToStar> pointsToStars = [
  PointsToStar(points: 250, stars: Stars.three),
  PointsToStar(points: 420, stars: Stars.four),
  PointsToStar(points: 180, stars: Stars.two),
  PointsToStar(points: 320, stars: Stars.three),
  PointsToStar(points: 450, stars: Stars.four),
  PointsToStar(points: 150, stars: Stars.two),
  PointsToStar(points: 390, stars: Stars.four),
  PointsToStar(points: 200, stars: Stars.two),
  PointsToStar(points: 280, stars: Stars.three),
  PointsToStar(points: 480, stars: Stars.five),
  PointsToStar(points: 170, stars: Stars.two),
  PointsToStar(points: 380, stars: Stars.four),
  PointsToStar(points: 210, stars: Stars.three),
  PointsToStar(points: 290, stars: Stars.three),
  PointsToStar(points: 430, stars: Stars.four),
  PointsToStar(points: 130, stars: Stars.one),
  PointsToStar(points: 360, stars: Stars.four),
  PointsToStar(points: 240, stars: Stars.three),
  PointsToStar(points: 410, stars: Stars.four),
  PointsToStar(points: 220, stars: Stars.three),
  PointsToStar(points: 415, stars: Stars.three),
  PointsToStar(points: 262, stars: Stars.one),
  PointsToStar(points: 105, stars: Stars.one),
  PointsToStar(points: 466, stars: Stars.four),
  PointsToStar(points: 373, stars: Stars.two),
  PointsToStar(points: 482, stars: Stars.two),
  PointsToStar(points: 209, stars: Stars.three),
  PointsToStar(points: 302, stars: Stars.two),
  PointsToStar(points: 248, stars: Stars.five),
  PointsToStar(points: 352, stars: Stars.one),
  PointsToStar(points: 328, stars: Stars.three),
  PointsToStar(points: 352, stars: Stars.five),
  PointsToStar(points: 289, stars: Stars.three),
  PointsToStar(points: 390, stars: Stars.one),
  PointsToStar(points: 106, stars: Stars.five),
  PointsToStar(points: 297, stars: Stars.two),
  PointsToStar(points: 334, stars: Stars.three),
  PointsToStar(points: 230, stars: Stars.two),
  PointsToStar(points: 464, stars: Stars.four),
  PointsToStar(points: 363, stars: Stars.four),
  PointsToStar(points: 354, stars: Stars.four),
  PointsToStar(points: 108, stars: Stars.two),
  PointsToStar(points: 391, stars: Stars.two),
  PointsToStar(points: 370, stars: Stars.one),
  PointsToStar(points: 269, stars: Stars.four),
  PointsToStar(points: 281, stars: Stars.four),
  PointsToStar(points: 348, stars: Stars.four),
  PointsToStar(points: 490, stars: Stars.one),
  PointsToStar(points: 381, stars: Stars.four),
  PointsToStar(points: 481, stars: Stars.five),
  PointsToStar(points: 291, stars: Stars.four),
  PointsToStar(points: 138, stars: Stars.one),
  PointsToStar(points: 172, stars: Stars.four),
  PointsToStar(points: 323, stars: Stars.one),
  PointsToStar(points: 177, stars: Stars.two),
  PointsToStar(points: 469, stars: Stars.four),
  PointsToStar(points: 178, stars: Stars.three),
  PointsToStar(points: 468, stars: Stars.one),
  PointsToStar(points: 464, stars: Stars.one),
  PointsToStar(points: 402, stars: Stars.five),
  PointsToStar(points: 463, stars: Stars.five),
  PointsToStar(points: 416, stars: Stars.three),
  PointsToStar(points: 102, stars: Stars.one),
  PointsToStar(points: 171, stars: Stars.five),
  PointsToStar(points: 112, stars: Stars.five),
  PointsToStar(points: 413, stars: Stars.three),
  PointsToStar(points: 183, stars: Stars.one),
  PointsToStar(points: 357, stars: Stars.one),
  PointsToStar(points: 248, stars: Stars.one),
  PointsToStar(points: 168, stars: Stars.five),
  PointsToStar(points: 311, stars: Stars.three),
  PointsToStar(points: 440, stars: Stars.two),
  PointsToStar(points: 109, stars: Stars.five),
  PointsToStar(points: 467, stars: Stars.two),
  PointsToStar(points: 468, stars: Stars.five),
  PointsToStar(points: 124, stars: Stars.three),
  PointsToStar(points: 152, stars: Stars.two),
  PointsToStar(points: 453, stars: Stars.two),
  PointsToStar(points: 316, stars: Stars.one),
  PointsToStar(points: 425, stars: Stars.five),
  PointsToStar(points: 148, stars: Stars.two),
  PointsToStar(points: 236, stars: Stars.four),
  PointsToStar(points: 375, stars: Stars.four),
  PointsToStar(points: 450, stars: Stars.five),
  PointsToStar(points: 165, stars: Stars.five),
  PointsToStar(points: 158, stars: Stars.four),
  PointsToStar(points: 250, stars: Stars.four),
  PointsToStar(points: 350, stars: Stars.one),
  PointsToStar(points: 464, stars: Stars.one),
  PointsToStar(points: 201, stars: Stars.five),
  PointsToStar(points: 107, stars: Stars.four),
  PointsToStar(points: 366, stars: Stars.two),
  PointsToStar(points: 415, stars: Stars.four),
  PointsToStar(points: 293, stars: Stars.three),
  PointsToStar(points: 116, stars: Stars.five),
  PointsToStar(points: 134, stars: Stars.five),
  PointsToStar(points: 313, stars: Stars.two),
  PointsToStar(points: 207, stars: Stars.one),
  PointsToStar(points: 330, stars: Stars.three),
  PointsToStar(points: 329, stars: Stars.four),
  PointsToStar(points: 126, stars: Stars.two),
  PointsToStar(points: 482, stars: Stars.three),
  PointsToStar(points: 137, stars: Stars.two),
  PointsToStar(points: 192, stars: Stars.one),
  PointsToStar(points: 163, stars: Stars.four),
  PointsToStar(points: 316, stars: Stars.four),
  PointsToStar(points: 342, stars: Stars.five),
  PointsToStar(points: 127, stars: Stars.one),
  PointsToStar(points: 493, stars: Stars.one),
  PointsToStar(points: 261, stars: Stars.four),
  PointsToStar(points: 106, stars: Stars.one),
  PointsToStar(points: 376, stars: Stars.five),
  PointsToStar(points: 310, stars: Stars.one),
  PointsToStar(points: 198, stars: Stars.four),
  PointsToStar(points: 165, stars: Stars.three),
  PointsToStar(points: 281, stars: Stars.four),
  PointsToStar(points: 206, stars: Stars.three),
  PointsToStar(points: 295, stars: Stars.five),
  PointsToStar(points: 327, stars: Stars.two),
  PointsToStar(points: 418, stars: Stars.two),
  PointsToStar(points: 301, stars: Stars.two),
  PointsToStar(points: 248, stars: Stars.four),
  PointsToStar(points: 101, stars: Stars.one),
  PointsToStar(points: 210, stars: Stars.one),
  PointsToStar(points: 287, stars: Stars.two),
  PointsToStar(points: 268, stars: Stars.one),
  PointsToStar(points: 239, stars: Stars.three),
  PointsToStar(points: 298, stars: Stars.five),
  PointsToStar(points: 282, stars: Stars.three),
  PointsToStar(points: 258, stars: Stars.four),
  PointsToStar(points: 284, stars: Stars.three),
  PointsToStar(points: 400, stars: Stars.one),
  PointsToStar(points: 386, stars: Stars.one),
  PointsToStar(points: 457, stars: Stars.four),
  PointsToStar(points: 319, stars: Stars.three),
  PointsToStar(points: 146, stars: Stars.one),
  PointsToStar(points: 127, stars: Stars.two),
  PointsToStar(points: 193, stars: Stars.one),
  PointsToStar(points: 491, stars: Stars.three),
  PointsToStar(points: 124, stars: Stars.five),
  PointsToStar(points: 226, stars: Stars.five),
  PointsToStar(points: 474, stars: Stars.three),
  PointsToStar(points: 304, stars: Stars.one),
  PointsToStar(points: 457, stars: Stars.three),
  PointsToStar(points: 335, stars: Stars.three),
  PointsToStar(points: 280, stars: Stars.four),
  PointsToStar(points: 137, stars: Stars.five),
  PointsToStar(points: 327, stars: Stars.five),
  PointsToStar(points: 232, stars: Stars.four),
  PointsToStar(points: 305, stars: Stars.four),
  PointsToStar(points: 162, stars: Stars.five),
  PointsToStar(points: 437, stars: Stars.five),
  PointsToStar(points: 228, stars: Stars.one),
  PointsToStar(points: 443, stars: Stars.one),
  PointsToStar(points: 167, stars: Stars.two),
  PointsToStar(points: 176, stars: Stars.one),
  PointsToStar(points: 406, stars: Stars.five),
  PointsToStar(points: 359, stars: Stars.five),
  PointsToStar(points: 378, stars: Stars.four),
  PointsToStar(points: 119, stars: Stars.two),
  PointsToStar(points: 103, stars: Stars.three),
  PointsToStar(points: 449, stars: Stars.five),
  PointsToStar(points: 448, stars: Stars.five),
  PointsToStar(points: 459, stars: Stars.four),
  PointsToStar(points: 231, stars: Stars.five),
  PointsToStar(points: 102, stars: Stars.five),
  PointsToStar(points: 196, stars: Stars.five),
  PointsToStar(points: 184, stars: Stars.four),
  PointsToStar(points: 298, stars: Stars.two),
  PointsToStar(points: 106, stars: Stars.one),
  PointsToStar(points: 484, stars: Stars.five),
  PointsToStar(points: 399, stars: Stars.three),
  PointsToStar(points: 480, stars: Stars.three),
  PointsToStar(points: 381, stars: Stars.two),
  PointsToStar(points: 331, stars: Stars.five),
  PointsToStar(points: 366, stars: Stars.four),
  PointsToStar(points: 243, stars: Stars.four),
  PointsToStar(points: 439, stars: Stars.two),
  PointsToStar(points: 179, stars: Stars.four),
  PointsToStar(points: 120, stars: Stars.three),
  PointsToStar(points: 170, stars: Stars.one),
  PointsToStar(points: 454, stars: Stars.two),
  PointsToStar(points: 303, stars: Stars.three),
  PointsToStar(points: 427, stars: Stars.five),
  PointsToStar(points: 179, stars: Stars.four),
  PointsToStar(points: 119, stars: Stars.two),
  PointsToStar(points: 137, stars: Stars.one),
  PointsToStar(points: 301, stars: Stars.four),
  PointsToStar(points: 474, stars: Stars.five),
  PointsToStar(points: 368, stars: Stars.five),
  PointsToStar(points: 481, stars: Stars.three),
  PointsToStar(points: 334, stars: Stars.five),
  PointsToStar(points: 430, stars: Stars.one),
  PointsToStar(points: 135, stars: Stars.three),
  PointsToStar(points: 227, stars: Stars.three),
  PointsToStar(points: 491, stars: Stars.five),
  PointsToStar(points: 125, stars: Stars.five),
  PointsToStar(points: 490, stars: Stars.three),
  PointsToStar(points: 231, stars: Stars.one),
  PointsToStar(points: 497, stars: Stars.one),
  PointsToStar(points: 428, stars: Stars.one),
  PointsToStar(points: 449, stars: Stars.two),
  PointsToStar(points: 131, stars: Stars.one),
  PointsToStar(points: 439, stars: Stars.three),
  PointsToStar(points: 155, stars: Stars.three),
  PointsToStar(points: 265, stars: Stars.five),
  PointsToStar(points: 102, stars: Stars.three),
  PointsToStar(points: 215, stars: Stars.three),
  PointsToStar(points: 413, stars: Stars.five),
  PointsToStar(points: 144, stars: Stars.four),
  PointsToStar(points: 163, stars: Stars.one),
  PointsToStar(points: 500, stars: Stars.three),
  PointsToStar(points: 478, stars: Stars.four),
  PointsToStar(points: 136, stars: Stars.four),
  PointsToStar(points: 351, stars: Stars.three),
  PointsToStar(points: 145, stars: Stars.one),
  PointsToStar(points: 267, stars: Stars.four),
  PointsToStar(points: 498, stars: Stars.four),
  PointsToStar(points: 137, stars: Stars.three),
  PointsToStar(points: 114, stars: Stars.five),
  PointsToStar(points: 436, stars: Stars.two),
  PointsToStar(points: 174, stars: Stars.one),
  PointsToStar(points: 285, stars: Stars.five),
  PointsToStar(points: 131, stars: Stars.five),
  PointsToStar(points: 322, stars: Stars.two),
];

final List<ProductImage> productImages = [
  ProductImage(
      id: 1,
      images: [
        AppImageAssets.bg1,
        AppImageAssets.mens1,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg1),
  ProductImage(
      id: 2,
      images: [
        AppImageAssets.bg2,
        AppImageAssets.mens2,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb
      ],
      mainImage: AppImageAssets.bg2),
  ProductImage(
      id: 3,
      images: [
        AppImageAssets.bg3,
        AppImageAssets.mens3,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg3),
  ProductImage(
      id: 4,
      images: [
        AppImageAssets.mens4,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb,
        AppImageAssets.bg1
      ],
      mainImage: AppImageAssets.mens4),
  ProductImage(
      id: 5,
      images: [
        AppImageAssets.bg2,
        AppImageAssets.mens1,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg2),
  ProductImage(
      id: 6,
      images: [
        AppImageAssets.bg3,
        AppImageAssets.mens2,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb
      ],
      mainImage: AppImageAssets.bg3),
  ProductImage(
      id: 7,
      images: [
        AppImageAssets.bg1,
        AppImageAssets.mens3,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg1),
  ProductImage(
      id: 8,
      images: [
        AppImageAssets.mens4,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb,
        AppImageAssets.bg2
      ],
      mainImage: AppImageAssets.mens4),
  ProductImage(
      id: 9,
      images: [
        AppImageAssets.bg3,
        AppImageAssets.mens1,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg3),
  ProductImage(
      id: 10,
      images: [
        AppImageAssets.bg2,
        AppImageAssets.mens2,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb
      ],
      mainImage: AppImageAssets.bg2),
  ProductImage(
      id: 11,
      images: [
        AppImageAssets.bg1,
        AppImageAssets.mens3,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg1),
  ProductImage(
      id: 12,
      images: [
        AppImageAssets.mens4,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb,
        AppImageAssets.bg3
      ],
      mainImage: AppImageAssets.mens4),
  ProductImage(
      id: 13,
      images: [
        AppImageAssets.bg2,
        AppImageAssets.mens1,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg2),
  ProductImage(
      id: 14,
      images: [
        AppImageAssets.bg3,
        AppImageAssets.mens2,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb
      ],
      mainImage: AppImageAssets.bg3),
  ProductImage(
      id: 15,
      images: [
        AppImageAssets.bg1,
        AppImageAssets.mens3,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg1),
  ProductImage(
      id: 16,
      images: [
        AppImageAssets.mens4,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb,
        AppImageAssets.bg2
      ],
      mainImage: AppImageAssets.mens4),
  ProductImage(
      id: 17,
      images: [
        AppImageAssets.bg3,
        AppImageAssets.mens1,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg3),
  ProductImage(
      id: 18,
      images: [
        AppImageAssets.bg2,
        AppImageAssets.mens2,
        AppImageAssets.tShirt2b,
        AppImageAssets.tShirtfb
      ],
      mainImage: AppImageAssets.bg2),
  ProductImage(
      id: 19,
      images: [
        AppImageAssets.bg1,
        AppImageAssets.mens3,
        AppImageAssets.tShirt1b,
        AppImageAssets.tShirt1f
      ],
      mainImage: AppImageAssets.bg1),
];

final List<List<String>> clothingDescriptions = [
  [
    "Stylish Shirt with unique patterns and a comfortable fit. It has trendy buttons and a sleek collar."
  ],
  [
    "Elegant Dress made of high-quality fabric. It features a chic design with intricate details and a flattering silhouette."
  ],
  [
    "Cozy Jeans crafted with soft denim material. They offer a relaxed fit and are perfect for casual outings."
  ],
  [
    "Trendy Jacket with a modern design and vibrant colors. It provides both style and warmth for chilly days."
  ],
  [
    "Versatile Blouse that can be dressed up or down. It pairs well with skirts, jeans, or dress pants."
  ],
  [
    "Classic Skirt with a timeless appeal. It has a flattering A-line shape and is suitable for various occasions."
  ],
  [
    "Fashionable Sweater featuring a unique texture and a trendy oversized fit. It keeps you warm and stylish."
  ],
  [
    "Comfortable Pants made of stretchy fabric for a perfect fit. They have a slimming effect and are ideal for everyday wear."
  ],
  [
    "Sleek Coat with a sophisticated design and a luxurious feel. It provides both style and protection from the elements."
  ],
  [
    "Chic Top with a feminine touch. It has delicate lace detailing and a flattering neckline."
  ],
  [
    "Stylish Shirt with a modern twist. It features a bold print and a relaxed fit for a fashionable look."
  ],
  [
    "Cozy Dress crafted with soft knit fabric. It has a comfortable loose fit and is perfect for casual occasions."
  ],
  [
    "Elegant Jeans with a slimming silhouette and a stylish wash. They offer both comfort and style."
  ],
  [
    "Trendy Jacket with edgy details and a cropped length. It adds a fashionable touch to any outfit."
  ],
  [
    "Versatile Blouse that can be easily dressed up or down. It features a flattering cut and versatile color."
  ],
  [
    "Classic Skirt with a timeless design and a flattering midi length. It can be worn for both formal and casual events."
  ],
  [
    "Fashionable Sweater with a cozy oversized fit. It features trendy patterns and a comfortable feel."
  ],
  [
    "Comfortable Pants made of breathable fabric. They have a relaxed fit and an adjustable waistband for maximum comfort."
  ],
  [
    "Sleek Coat with a tailored silhouette and a sophisticated look. It adds an elegant touch to any outfit."
  ],
  [
    "Chic Top with a unique neckline and feminine details. It can be paired with jeans or skirts for a stylish ensemble."
  ]
];

final List<ShippingInformation> shipping = [
  ShippingInformation(
      fee: 8,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-15"),
      from: "USA, New York"),
  ShippingInformation(
      fee: 12,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-12"),
      from: "Canada, Toronto"),
  ShippingInformation(
      fee: 6,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-18"),
      from: "UK, London"),
  ShippingInformation(
      fee: 15,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-11"),
      from: "Germany, Berlin"),
  ShippingInformation(
      fee: 9,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-17"),
      from: "France, Paris"),
  ShippingInformation(
      fee: 7,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-19"),
      from: "Japan, Tokyo"),
  ShippingInformation(
      fee: 11,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-14"),
      from: "USA, New York"),
  ShippingInformation(
      fee: 5,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-16"),
      from: "Canada, Toronto"),
  ShippingInformation(
      fee: 10,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-13"),
      from: "UK, London"),
  ShippingInformation(
      fee: 8,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-20"),
      from: "Germany, Berlin"),
  ShippingInformation(
      fee: 12,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-15"),
      from: "France, Paris"),
  ShippingInformation(
      fee: 6,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-18"),
      from: "Japan, Tokyo"),
  ShippingInformation(
      fee: 15,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-11"),
      from: "USA, New York"),
  ShippingInformation(
      fee: 9,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-17"),
      from: "Canada, Toronto"),
  ShippingInformation(
      fee: 7,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-19"),
      from: "UK, London"),
  ShippingInformation(
      fee: 11,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-14"),
      from: "Germany, Berlin"),
  ShippingInformation(
      fee: 5,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-16"),
      from: "France, Paris"),
  ShippingInformation(
      fee: 10,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-13"),
      from: "Japan, Tokyo"),
  ShippingInformation(
      fee: 8,
      type: ShippingType.standard,
      arrivalDate: DateTime.parse("2023-05-20"),
      from: "USA, New York"),
  ShippingInformation(
      fee: 12,
      type: ShippingType.express,
      arrivalDate: DateTime.parse("2023-05-15"),
      from: "Canada, Toronto"),
];

T getRandomResult<T>(List<T> list) {
  if (list.length <= 20) {
    return list[Random().nextInt(list.length)];
  } else {
    // return list[Random().nextInt(list.length - 20)];
    return list[Random().nextInt(20)];
  }
}
