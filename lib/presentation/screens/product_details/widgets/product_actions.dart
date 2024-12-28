import 'package:flutter/material.dart';
import '../../../widgets/global/custom_button.dart';
import '../../../../utils/constants/app_strings.dart';

class ProductActions extends StatelessWidget {
  const ProductActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Save as PDF',
            onPressed: () {},
            isOutlined: true,
          ),
          const SizedBox(width: 16),
          CustomButton(
            text: AppStrings.add,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}