// import 'package:code_test/core/navigation/routes.dart';
import 'package:code_test/core/constants/colors.dart';
import 'package:code_test/core/constants/extensions.dart';
import 'package:code_test/core/constants/image_assets.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:code_test/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsPage extends ConsumerWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CustomAppbar.withOptions(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.sp, right: 16.0.sp, top: 20.0.sp),
          child: Column(
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
                        AppImageAssets.tShirt1f,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 20.0.h,
                      left: 16.0.w,
                      child: SizedBox(
                        width: 44.0.w,
                        child: Column(
                          children: List.generate(
                            4,
                            (index) => Container(
                              margin: EdgeInsets.only(bottom: 15.0.sp),
                              height: 44.0.h,
                              width: 44.0.w,
                              decoration: BoxDecoration(
                                color: AppColors.textPrimary2,
                                borderRadius: BorderRadius.circular(8.0.sp),
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

              SizedBox(height: 30.0,child: Row(children: []),),
              16.0.h.spacingH,


            ],
          ),
        ),
      ),
    );
  }
}
