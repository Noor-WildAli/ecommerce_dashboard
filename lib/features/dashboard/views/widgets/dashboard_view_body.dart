import 'package:ecommerce_dashboard/core/widgets/custom_buttom.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/add_product_view.dart';
import 'package:flutter/material.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtom(
              onPressed: () {
                Navigator.pushNamed(context, AddProductView.routeName);
              },
              text: 'Add new product'),
        ],
      ),
    );
  }
}
