import 'package:ecommerce_dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case DashboardView.routeName:
      return MaterialPageRoute(builder: (context) => const DashboardView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
