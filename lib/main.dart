import 'package:ecommerce_dashboard/core/helper_fucntions/on_generate_routes.dart';
import 'package:ecommerce_dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
