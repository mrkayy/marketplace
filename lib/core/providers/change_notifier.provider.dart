import 'dart:async';

import 'package:code_test/core/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScrollControllerNotifier extends ChangeNotifier {
  ScrollControllerNotifier() {
    scrollController1.addListener(() {
      print("Page Scoller at the top: ${scrollController1.position.pixels}");
      if (scrollController1.position.pixels == 0) {
        pauseProductScrolling = true;
        switchAppbarColor = false;
        notifyListeners();
      } else if (scrollController1.position.pixels > 330) {
        switchAppbarColor = true;
        pauseProductScrolling = false;
        pausePageScrolling = true;
        notifyListeners();
      }
      notifyListeners();
      // pageScrollController(scrollController1.offset);
    });

    scrollController2.addListener(() {
      print("Product Scroll is at ${scrollController2.position.pixels}");
      if (scrollController2.position.pixels <= 0 &&
          scrollController2.position.atEdge) {
        // final isTop = scrollController2.position.pixels == 0;
        pausePageScrolling = false;
        pauseProductScrolling = true;
        notifyListeners();
      }
      notifyListeners();
    });
  }

  PageController pgController = PageController(initialPage: 0);
  ScrollController scrollController1 = ScrollController();
  ScrollController scrollController2 = ScrollController();

  bool pausePageScrolling = false;
  bool pauseProductScrolling = true;
  bool switchAppbarColor = false;

  List<String> bgImages = [
    AppImageAssets.bg1,
    AppImageAssets.bg2,
    AppImageAssets.bg3,
  ];

  int position = 0;

  void nextPageOnClick() {
    if (position == 2) {
      pgController.animateToPage(0,
          duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
    } else {
      pgController.nextPage(
          duration: const Duration(milliseconds: 1300),
          curve: Curves.easeInOut);
    }
    notifyListeners();
  }

  void autoScrollPage() {
    debugPrint('=============[PRINTING]: Starting timer');
    Timer.periodic(const Duration(seconds: 3), (timer) => nextPageOnClick());
    // notifyListeners();
  }

  void onPageChange(int pos) {
    position = pos;
    notifyListeners();
  }

  // pageScrollController(double pos) {
  //   print("page_is_scrolling: $pos");
  //   notifyListeners();
  // }

  // productScrollController(double pos) {
  //   print("product_is_scrolling: $pos");

  //   notifyListeners();
  // }
}

final scrollControllerProvider =
    ChangeNotifierProvider((ref) => ScrollControllerNotifier());
