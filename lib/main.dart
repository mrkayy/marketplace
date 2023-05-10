import 'package:code_test/core/navigation/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(
    routes: RouterPages.pages,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(
            state.error.toString(),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390.0, 844.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          //
          return MaterialApp.router(
            // routeInformationParser: _router.routeInformationParser,
            // routerDelegate: _router.routerDelegate,
            routerConfig: _router,
            title: 'Marketplace',
            theme: ThemeData(
              primarySwatch: Colors.teal,
            ),
          );
        });
  }
}
