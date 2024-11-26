import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_shop_admin/routes/route.dart';

class RouteObserver extends GetObserver{
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if(previousRoute != null) {
      for (var routeName in CustomRoutes.sideMenuItems) {
        if (previousRoute.settings.name == routeName) {
          sidebarController.setActiveItem.value = routeName;
        }
      }
    }
  }

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if(route != null) {
      for (var routeName in CustomRoutes.sideMenuItems) {
        if (route.settings.name == routeName) {
          sidebarController.setActiveItem.value = routeName;
        }
      }
    }
  }
}