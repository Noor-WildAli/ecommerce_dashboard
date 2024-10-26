import 'package:ecommerce_dashboard/core/utils/app_text_styles.dart';
import 'package:ecommerce_dashboard/features/add_product/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'is featured product?',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
