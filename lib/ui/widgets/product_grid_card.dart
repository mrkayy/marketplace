import 'package:code_test/core/constants/colors.dart';
import 'package:code_test/core/constants/enums.dart';
import 'package:code_test/core/constants/extensions.dart';
import 'package:code_test/core/constants/icon_assets.dart';
import 'package:code_test/domain/entities/rating.dart';
import 'package:code_test/ui/widgets/icon_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/category.entity.dart';

class ProductGridCard extends StatelessWidget {
  const ProductGridCard({
    super.key,
    required this.category,
    required this.isHearted,
    required this.price,
    required this.rating,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
  final ProductSubCategory category;
  final Ratings rating;
  final double price;
  final bool isHearted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.0.h,
      width: 185.0.w,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 127.0.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      opacity: 0.76,
                      alignment: Alignment.center),
                ),
              ),
              15.0.h.spacingH,
              Padding(
                padding: EdgeInsets.only(left: 10.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      category.name,
                      style: TextStyle(
                        color: AppColors.textPrimary2,
                        fontSize: 13.0.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    8.0.h.spacingH,
                    SizedBox(
                      height: 36.0.h,
                      child: Text(
                        title.toLowerCase(),
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    24.0.h.spacingH,
                    // Padding(
                    // padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                    // child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconParserWidget(
                              iconHeight: 12.0,
                              iconWidth: 12.0,
                              image: AppIconAssets.rating,
                            ),
                            4.0.w.spacingW,
                            Text(
                              rating.totalPoints.toString(),
                              style: TextStyle(
                                color: AppColors.textPrimary2,
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            4.0.w.spacingW,
                            Text(
                              "| 2349",
                              style: TextStyle(
                                color: AppColors.textPrimary2,
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          price.formatMoney,
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                      // ),
                    )
                  ],
                ),
              )
            ],
          ),

          // last item
          Positioned(
            top: 12.0.h,
            right: 12.0.w,
            child: IconParserWidget(
              iconHeight: 20.0.h,
              iconWidth: 20.0.w,
              image: AppIconAssets.heartIcon,
            ),
          )
        ],
      ),
    );
  }
}
