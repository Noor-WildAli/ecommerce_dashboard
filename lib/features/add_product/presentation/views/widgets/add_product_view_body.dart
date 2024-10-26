import 'dart:io';

import 'package:ecommerce_dashboard/core/widgets/custom_buttom.dart';
import 'package:ecommerce_dashboard/core/widgets/custom_text_field.dart';
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

  late String? name, code, description;
  late num? price;
  late int? quantity;
  bool isFeatured = false;
  File? fileImage;

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
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                hintText: "Product Name",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = num.parse(value!);
                },
                hintText: "Price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                hintText: "Code",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  quantity = int.parse(value!);
                },
                hintText: "Quantity",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  description = value;
                },
                hintText: "Description",
                keyboardType: TextInputType.text,
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {
                  isFeatured = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                onFileChanged: (image) {
                  fileImage = image;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButtom(
                onPressed: () {
                  if (fileImage != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  } else {
                    showError(context);
                  }
                },
                text: "Add Product",
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Please select an image"),
      ),
    );
  }
}
