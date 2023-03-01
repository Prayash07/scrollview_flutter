import 'package:flutter/material.dart';
import 'package:flutter_scrollview/core/routes/routes.dart';
import 'package:flutter_scrollview/features/customScrollView/presentation/pages/custom_scroll_view.dart';
import 'package:flutter_scrollview/features/homepage/presentation/pages/homepage.dart';
import 'package:flutter_scrollview/features/nestedScrollView/presentation/pages/nested_scroll_view.dart';
import 'package:page_transition/page_transition.dart';

class ApprouteGenerator {
  static Route<dynamic> routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.homepage:
        return PageTransition(
            child: const HomePage(), type: PageTransitionType.leftToRight);
      case AppRoute.customScrollView:
        return PageTransition(
            child: const CustomScrollViewExample(),
            type: PageTransitionType.leftToRight);
      case AppRoute.nestedScrollView:
        return PageTransition(
            child: const NestedScrollViewExample(),
            type: PageTransitionType.leftToRight);
      default:
        return PageTransition(
            child: const HomePage(), type: PageTransitionType.leftToRight);
    }
  }
}
