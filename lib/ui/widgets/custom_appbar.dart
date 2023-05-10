import 'package:code_test/core/constants/colors.dart';
import 'package:code_test/core/constants/extensions.dart';
import 'package:code_test/core/constants/icon_assets.dart';
import 'package:code_test/core/constants/image_assets.dart';
import 'package:code_test/core/providers/change_notifier.provider.dart';
import 'package:code_test/core/providers/product_provider.dart';
import 'package:code_test/ui/widgets/icon_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key}) : showOptions = false;
  const CustomAppbar.withOptions({super.key}) : showOptions = true;

  final bool? showOptions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// initialize riverpod here
    final pRef = ref.read(selectedProductProvider.notifier).state;
    final scrollNotifier = ref.watch(scrollControllerProvider);
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: const Duration(microseconds: 1800),
      padding: EdgeInsets.only(bottom: 20.0.sp, left: 16.0.sp, right: 16.0.sp),
      height: 155.0.h,
      color: scrollNotifier.switchAppbarColor == true
          ? AppColors.white
          : AppColors.transparent,
      // padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // 16.0.w.spacingW,
          showOptions!
              ? IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios))
              : Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 8.0.sp, vertical: 8.sp),
                      prefixIcon: Transform.scale(
                        scale: 0.55,
                        child: Container(
                          height: 8.0.h,
                          width: 8.0.w,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppIconAssets.searchIcon),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      hintText: "Search..",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.boxBackground, width: 0.75.sp),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
          16.0.w.spacingW,
          showOptions!
              ? Row(
                  children: [
                    IconParserWidget(
                      image: pRef!.isHearted!
                          ? AppIconAssets.heartedIcon
                          : AppIconAssets.heartIcon,
                    ),
                    16.0.w.spacingW,
                    IconParserWidget(
                      image: AppIconAssets.shareIcon,
                    ),
                    16.0.w.spacingW,
                    AppbarIconWithBadge(
                      icon: AppIconAssets.cartIcon,
                      badgeCount: 9,
                    ),
                  ],
                )
              : Row(
                  children: [
                    AppbarIconWithBadge(
                      icon: AppIconAssets.cartIcon,
                      badgeCount: 2,
                    ),
                    16.0.w.spacingW,
                    AppbarIconWithBadge(
                      icon: AppIconAssets.messageIcon,
                      badgeCount: 9,
                    ),
                    // 16.0.w.spacingW,
                  ],
                ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0.h);
}

class AppbarIconWithBadge extends StatelessWidget {
  const AppbarIconWithBadge({
    super.key,
    required this.icon,
    required this.badgeCount,
  });

  final String icon;
  final int badgeCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.0.h,
      width: 36.0.w,
      child: Stack(alignment: Alignment.topRight, children: [
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 30.0.h,
            width: 30.0.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(icon), fit: BoxFit.fitHeight)),
          ),
        ),
        Container(
          height: 18.0.h,
          width: 18.0.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0.sp),
            color: AppColors.badge,
          ),
          alignment: Alignment.center,
          child: Text(
            "$badgeCount",
            style: TextStyle(color: AppColors.white, fontSize: 11.0.sp),
          ),
        ),
      ]),
    );
  }
}
