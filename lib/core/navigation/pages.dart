import 'package:code_test/core/navigation/routes.dart';
import 'package:code_test/core/utils/helper_functions.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterPages {
  //todo: 1. function takes list of products category and prouct id
//2. returns the matching product id for the

  static List<GoRoute> pages = [
    GoRoute(
      name: RouteNames.HOME,
      path: RoutePaths.HOME_PATH,
      pageBuilder: ((context, state) => MaterialPage(
            key: state.pageKey,
            child: const Scaffold(
              body: Center(
                child: Text("Home Page"),
              ),
            ),
          )),
      routes: [
        GoRoute(
          name: RouteNames.PRODUCT_DETAILS,
          path: ":id",
          pageBuilder: (context, state) {
            final Product product =
                showProductDetails(<Product>[], state.pathParameters["id"]!);
            return MaterialPage(
              key: state.pageKey,
              child: const Scaffold(
                body: Center(
                  child: Text("Product Details Page"),
                ),
              ),
            );
          },
        ),
      ],
    )
  ];
}
