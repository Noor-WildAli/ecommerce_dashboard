import 'package:ecommerce_dashboard/core/widgets/build_app_bar.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  static const routeName = 'add-product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Add Product'),
      body: const AddProductViewBody(),
    );
  }
}
