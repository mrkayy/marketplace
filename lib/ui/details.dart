// import 'package:code_test/core/navigation/routes.dart';
import 'package:code_test/core/constants/colors.dart';
import 'package:code_test/core/constants/extensions.dart';
import 'package:code_test/core/constants/icon_assets.dart';
// import 'package:code_test/core/constants/image_assets.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:code_test/ui/widgets/custom_appbar.dart';
import 'package:code_test/ui/widgets/icon_parser.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsPage extends ConsumerWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppbar.withOptions(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: EdgeInsets.only(left: 16.0.sp, right: 16.0.sp, top: 10.0.sp),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.sp),
                  color: AppColors.boxBackground,
                ),
                height: 375.0.h,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0.sp),
                      child: Image.asset(
                        width: double.infinity,
                        product.images.mainImage,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Positioned(
                      top: 20.0.h,
                      left: 16.0.w,
                      child: SizedBox(
                        width: 44.0.w,
                        height: 250.h,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: product.images.images.length,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.only(bottom: 15.0.sp),
                            height: 44.0.h,
                            width: 44.0.w,
                            decoration: BoxDecoration(
                              color: AppColors.boxBackground,
                              borderRadius: BorderRadius.circular(8.0.sp),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0.sp),
                              child: Image.asset(
                                product.images.images[index],
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              24.0.h.spacingH,
              SizedBox(
                height: 30.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconParserWidget(
                      image: AppIconAssets.sellerShop,
                      iconWidth: 18.0.w,
                      iconHeight: 18.0.h,
                    ),
                    8.0.w.spacingW,
                    Text(
                      product.seller!.storeName!,
                      style: TextStyle(
                          color: AppColors.textPrimary3,
                          fontSize: 13.0.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              8.0.h.spacingH,
              Text(
                product.productName,
                maxLines: 2,
                style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18.0.sp,
                    height: 1.2,
                    fontWeight: FontWeight.w700),
              ),
              10.0.h.spacingH,
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconParserWidget(
                          iconHeight: 12.0,
                          iconWidth: 12.0,
                          image: AppIconAssets.rating,
                        ),
                        4.0.w.spacingW,
                        Text(
                          "4.0 Ratings",
                          style: TextStyle(
                            color: AppColors.textPrimary2,
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      " * ",
                      style: TextStyle(
                        color: AppColors.textPrimary2,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "2.3k+ Reviews",
                      style: TextStyle(
                        color: AppColors.textPrimary2,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "*",
                      style: TextStyle(
                        color: AppColors.textPrimary2,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "2.9k Sold",
                      style: TextStyle(
                        color: AppColors.textPrimary2,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                  // ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.0.sp, bottom: 20.0.sp),
                height: 175.0.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0.sp),
                          width: 165.0.w,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: AppColors.primary,
                            width: 2.0.sp,
                          ))),
                          child: Text(
                            "About Item",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10.0.sp),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: AppColors.textPrimary3,
                              width: 1.0.sp,
                            ))),
                            child: Text(
                              "Reviews",
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 16.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Refactor this widget
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12.0.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Brand:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.brand!,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              96.0.w.spacingW,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Color:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.color!,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Refactor this widget
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12.0.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Category:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.category!.name,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              40.0.w.spacingW,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Material:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.material!,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Refactor this widget
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 12.0.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Condition:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.condition!.name,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              40.0.w.spacingW,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Heavy:",
                                style: TextStyle(
                                  color: AppColors.textPrimary3,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              8.0.w.spacingW,
                              Text(
                                product.about!.weight!,
                                style: TextStyle(
                                  color: AppColors.textPrimary,
                                  fontSize: 15.0.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [],
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [],
                    // ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0.sp,
                color: AppColors.textPrimary3,
              ),
              20.0.h.spacingH,
              Text(
                "Description",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              8.0.h.spacingH,
              Column(
                children: product.productDescription!
                    .map(
                      (desc) => Text(
                        desc,
                        style: TextStyle(
                          color: AppColors.textPrimary2,
                          fontSize: 12.0.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.7.sp,
                        ),
                      ),
                    )
                    .toList(),
              ),
              18.0.h.spacingH,
              Text(
                "Chat us if there is anything you need to us about the project :)",
                maxLines: 2,
                softWrap: true,
                style: TextStyle(
                  color: AppColors.textPrimary2,
                  fontSize: 13.0.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.7.sp,
                ),
              ),
              20.0.h.spacingH,
              Divider(
                height: 1.0,
                thickness: 1.0.sp,
                color: AppColors.textPrimary3,
              ),
              20.0.h.spacingH,
              Text(
                "Shipping Information",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              18.0.h.spacingH,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Shipping Fee:",
                        style: TextStyle(
                          color: AppColors.textPrimary3,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      8.0.w.spacingW,
                      Text(
                        product.shippingInfo!.fee!.toDouble().formatMoney,
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  10.0.h.spacingH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Shipping Type:",
                        style: TextStyle(
                          color: AppColors.textPrimary3,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      8.0.w.spacingW,
                      Text(
                        product.shippingInfo!.type!.name,
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  10.0.h.spacingH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Date of Arrival:",
                        style: TextStyle(
                          color: AppColors.textPrimary3,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      8.0.w.spacingW,
                      Text(
                        product.shippingInfo!.arrivalDate!.convertToAppDate,
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              20.0.h.spacingH,
              Divider(
                height: 1.0,
                thickness: 1.0.sp,
                color: AppColors.textPrimary3,
              ),
              20.0.h.spacingH,
              Text(
                "Seller Information:",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              20.0.h.spacingH,
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(radius: 30.0),
                    15.0.w.spacingW,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.seller!.storeName!,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        8.0.h.spacingH,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Active 5 mins ago",
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            10.0.w.spacingW,
                            Text(
                              "|",
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 16.0.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            10.0.w.spacingW,
                            Text(
                              "85% Positive Feedback",
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        8.0.h.spacingH,
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0.sp, horizontal: 18.0.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0.sp),
                            border: Border.all(
                                color: AppColors.primary, width: 1.0.sp),
                          ),
                          height: 30.0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconParserWidget(
                                image: AppIconAssets.sellerShop,
                                iconWidth: 18.0.w,
                                iconHeight: 18.0.h,
                              ),
                              8.0.w.spacingW,
                              Text(
                                "Visit store",
                                style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 13.0.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              20.0.h.spacingH,
              Divider(
                height: 1.0,
                thickness: 1.0.sp,
                color: AppColors.textPrimary3,
              ),
              20.0.h.spacingH,
              Text(
                "Reviews & Ratings",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              12.0.h.spacingH,
              SizedBox(
                height: 150.0.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: Cro,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "4.2\t",
                                    style: TextStyle(
                                      color: AppColors.textPrimary,
                                      fontSize: 32.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "/5.0",
                                    style: TextStyle(
                                      color: AppColors.textPrimary3,
                                      fontSize: 13.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            25.0.w.spacingW,
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => IconParserWidget(
                                      iconHeight: 15.0,
                                      iconWidth: 15.0,
                                      image: AppIconAssets.rating)).toList(),
                            ),
                          ],
                        ),
                        Text(
                          "3.5k+ Reviews",
                          style: TextStyle(
                            color: AppColors.textPrimary3,
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    35.0.w.spacingW,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                                image: AppIconAssets.rating),
                            8.0.w.spacingW,
                            Text(
                              '5',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.0.w.spacingW,
                            SizedBox(
                              width: 170.0.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.sp),
                                child: LinearProgressIndicator(
                                  backgroundColor: AppColors.boxBackground,
                                  minHeight: 10.0.h,
                                  value: 0.6,
                                ),
                              ),
                            ),
                            8.0.w.spacingW,
                            Text(
                              '5.1k',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                                image: AppIconAssets.rating),
                            8.0.w.spacingW,
                            Text(
                              '4',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.0.w.spacingW,
                            SizedBox(
                              width: 170.0.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.sp),
                                child: LinearProgressIndicator(
                                  backgroundColor: AppColors.boxBackground,
                                  minHeight: 10.0.h,
                                  value: 0.2,
                                ),
                              ),
                            ),
                            8.0.w.spacingW,
                            Text(
                              '700',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                                image: AppIconAssets.rating),
                            8.0.w.spacingW,
                            Text(
                              '3',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.0.w.spacingW,
                            SizedBox(
                              width: 170.0.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.sp),
                                child: LinearProgressIndicator(
                                  backgroundColor: AppColors.boxBackground,
                                  minHeight: 10.0.h,
                                  value: 0.8,
                                ),
                              ),
                            ),
                            8.0.w.spacingW,
                            Text(
                              '1k',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                                image: AppIconAssets.rating),
                            8.0.w.spacingW,
                            Text(
                              '2',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.0.w.spacingW,
                            SizedBox(
                              width: 170.0.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.sp),
                                child: LinearProgressIndicator(
                                  backgroundColor: AppColors.boxBackground,
                                  minHeight: 10.0.h,
                                  value: 0.45,
                                ),
                              ),
                            ),
                            8.0.w.spacingW,
                            Text(
                              '1.3k',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                                iconHeight: 15.0,
                                iconWidth: 15.0,
                                image: AppIconAssets.rating),
                            8.0.w.spacingW,
                            Text(
                              '1',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            8.0.w.spacingW,
                            SizedBox(
                              width: 170.0.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0.sp),
                                child: LinearProgressIndicator(
                                  backgroundColor: AppColors.boxBackground,
                                  minHeight: 10.0.h,
                                  value: 0.11,
                                ),
                              ),
                            ),
                            8.0.w.spacingW,
                            Text(
                              '10',
                              style: TextStyle(
                                color: AppColors.textPrimary3,
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              20.0.h.spacingH,
              Divider(
                height: 1.0,
                thickness: 1.0.sp,
                color: AppColors.textPrimary3,
              ),
              // end
              40.0.h.spacingH,
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Expanded(
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 20.0.sp),
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Price",
                      style: TextStyle(
                        color: AppColors.textPrimary3,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // 8.0.h.spacingH,
                    Text(
                      product.productPrice.formatMoney,
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 28.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                  width: 200.w,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0.sp),
                                bottomLeft: Radius.circular(5.0.sp))),
                        height: 60.h,
                        width: 80.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.iconColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.0.sp),
                                bottomRight: Radius.circular(5.0.sp))),
                        height: 60.h,
                        width: (200 - 80).w,
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
