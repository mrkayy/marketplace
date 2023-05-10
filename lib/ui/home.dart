import 'dart:ui';

import 'package:code_test/core/constants/colors.dart';
import 'package:code_test/core/constants/enums.dart';
import 'package:code_test/core/constants/extensions.dart';
import 'package:code_test/core/constants/icon_assets.dart';
import 'package:code_test/core/constants/image_assets.dart';
// import 'package:code_test/core/helpers/products.dart';
// import 'package:code_test/core/helpers/products.dart';
import 'package:code_test/core/navigation/routes.dart';
import 'package:code_test/core/providers/change_notifier.provider.dart';
import 'package:code_test/core/providers/product_provider.dart';
// import 'package:code_test/domain/entities/product.entity.dart';
import 'package:code_test/domain/entities/rating.dart';
import 'package:code_test/domain/entities/store_category.entity.dart';
import 'package:code_test/ui/widgets/custom_appbar.dart';
import 'package:code_test/ui/widgets/product_grid_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    ref.read(scrollControllerProvider.notifier).autoScrollPage();
    // ref.read(counterProvider);
  }

  @override
  Widget build(BuildContext context) {
    final pRef = ref.read(scrollControllerProvider.notifier);
    final pref = ref.watch(scrollControllerProvider);
    //
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        controller: pRef.scrollController1,
        // physics: const BouncingScrollPhysics(),
        physics: pref.pausePageScrolling == true
            ? const NeverScrollableScrollPhysics()
            : const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: screen.height * 0.40, // takes 30% of the screen height
              color: AppColors.boxBackground,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // Background image
                  PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    padEnds: true,
                    controller: pRef.pgController,
                    itemCount: pRef.bgImages.length,
                    onPageChanged: pRef.onPageChange,
                    itemBuilder: (context, position) {
                      return IndexedStack(
                        index: position,
                        children: pRef.bgImages
                            .map((e) => Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    // color: Colors.black12.withOpacity(0.4),
                                    image: DecorationImage(
                                        image: AssetImage(e),
                                        fit: BoxFit.fitWidth,
                                        opacity: 0.62),
                                  ),
                                ))
                            .toList(),
                      );
                    },
                  ),
                  Positioned(
                    top: 142.0.h,
                    right: 16.0.w,
                    child: Row(
                      children: List.generate(
                        pRef.bgImages.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0.sp),
                          child: AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 500),
                            width: pref.position == index ? 10.0.w : 5.0.w,
                            height: 5.0.h,
                            decoration: BoxDecoration(
                                color: pref.position == index
                                    ? AppColors.iconColor
                                    : AppColors.textPrimary3,
                                borderRadius: BorderRadius.circular(5.0.sp)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 138.0.h,
                    left: 16.0.w,
                    child: SizedBox(
                      width: 150.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "#Fashion Day".toUpperCase(),
                            style: TextStyle(
                                fontSize: 13.0.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary),
                          ),
                          5.0.h.spacingH,
                          Text(
                            "80%OFF".toUpperCase(),
                            style: TextStyle(
                                fontSize: 38.0.sp,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0,
                                color: AppColors.textPrimary),
                          ),
                          8.0.h.spacingH,
                          Text(
                            "Discover fashion that suits to your style",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: AppColors.textPrimary),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20.0.h,
                    left: 16.0.w,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.iconColor),
                          minimumSize: MaterialStateProperty.all(
                              Size(116.0.sp, 40.0.sp))),
                      child: Text(
                        "Check this out",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Services Offered Widget
            SizedBox(
              height: screen.height * 0.15, // takes 30% of the screen height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  18.0.h.spacingH,
                  SizedBox(
                    height: 75.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ServicesOffered("Category", AppIconAssets.categoryIcon),
                        ServicesOffered("Flight", AppIconAssets.flightIcon),
                        ServicesOffered("Bill", AppIconAssets.billIcon),
                        ServicesOffered(
                            "Data plan", AppIconAssets.dataPlanIcon),
                        ServicesOffered("Top Up", AppIconAssets.coinIcon),
                      ]
                          .map(
                            (cx) => Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 45.0.h,
                                    width: 45.0.w,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.0.sp),
                                      color: AppColors.boxBackground,
                                    ),
                                    child: Transform.scale(
                                      scale: 0.48,
                                      child: Image.asset(cx.icon,
                                          fit: BoxFit.scaleDown),
                                    )),
                                Text(
                                  cx.name,
                                  style: TextStyle(
                                      fontSize: 13.0.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textPrimary3),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  12.0.h.spacingH,
                  // todo: refactor to scroll indicator

                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        pRef.bgImages.length,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0.sp),
                          child: AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 500),
                            width: pref.position == index ? 10.0.w : 5.0.w,
                            height: 5.0.h,
                            decoration: BoxDecoration(
                                color: pref.position == index
                                    ? AppColors.iconColor
                                    : AppColors.textPrimary3,
                                borderRadius: BorderRadius.circular(5.0.sp)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  12.0.h.spacingH,
                ],
              ),
            ),
            Container(
              color: AppColors.boxBackground,
              child: Column(
                // padding: EdgeInsets.zero,
                // cacheExtent: 15.0,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.0.sp, horizontal: 16.0.sp),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Best Sale Product",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textPrimary),
                          ),
                          Text(
                            "See more",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary),
                          ),
                        ]),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
                      height: 645.0.h,
                      width: double.infinity,
                      child: ref.watch(generateProductList).when(
                          data: (pl) {
                            return GridView.builder(
                              controller: pref.scrollController2,
                              // physics: const BouncingScrollPhysics(),
                              physics: pref.pauseProductScrolling == true
                                  ? const NeverScrollableScrollPhysics()
                                  : const BouncingScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.sp,
                                mainAxisSpacing: 20.sp,
                                mainAxisExtent: 270.0.sp,
                              ),
                              padding: EdgeInsets.zero,
                              itemCount: pl.length,
                              itemBuilder: ((context, index) {
                                final p = pl[index];
                                return GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(selectedProductProvider.notifier)
                                        .selectProduct(p);

                                    context.goNamed(RouteNames.PRODUCT_DETAILS);
                                  },
                                  child: ProductGridCard(
                                    image: p.images.mainImage,
                                    category: ProductSubCategory.shit,
                                    price: p.productPrice,
                                    isHearted: p.isHearted ?? false,
                                    rating: Ratings(totalPoints: 4.1),
                                    title: p.productName,
                                  ),
                                );
                              }),
                            );
                          },
                          error: (err, stack) {},
                          loading: () {})),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
