import 'package:ecommerce_dashboard/core/widgets/custom_text_field.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/widgets/custom_check_box.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/widgets/image_field.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/widgets/is_featuered_chexk_box.dart';
import 'package:flutter/material.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              const CustomTextFormField(
                hintText: "Product Name",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: "Price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: "Code",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: "Quantity",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: "Description",
                keyboardType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onFileChanged: (image) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
