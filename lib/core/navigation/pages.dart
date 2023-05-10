import 'package:code_test/core/helpers/products.dart';
import 'package:code_test/core/navigation/routes.dart';
import 'package:code_test/core/utils/helper_functions.dart';
import 'package:code_test/domain/entities/product.entity.dart';
import 'package:go_router/go_router.dart';
import 'package:code_test/ui/exports.dart';

class RouterPages {
  //todo: 1. function takes list of products category and prouct id
//2. returns the matching product id for the

  static List<GoRoute> pages = [
    GoRoute(
      name: RouteNames.HOME,
      path: RoutePaths.HOME_PATH,
      builder: ((context, state) {
        // add riverpod logic here
        return const HomeScreen();
      }),
      routes: [
        GoRoute(
          name: RouteNames.PRODUCT_DETAILS,
          path: RoutePaths.PRODUCT_DETAILS_PATH,
          builder: (context, state) {
            // add riverpod logic here
            final Product product =
                showProductDetails(products, state.pathParameters["id"]!);

            return ProductDetailsPage(product: product);
          },
        ),
      ],
    ),
    // GoRoute(
    //     name: RouteNames.PROFILE,
    //     path: RoutePaths.PROFILE_PATH,
    //     builder: (context, state) {
    //       // add riverpod logic here

    //       print("navigating to ${state.fullPath}");
    //       return const ProfileScreen();
    //     }),
  ];
}
