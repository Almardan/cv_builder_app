import 'package:flutter/material.dart';
import '../../../utils/constants/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? hint;
  final TextEditingController? controller;
  final bool multiline;

  const CustomTextField({
    super.key,
    required this.label,
    this.hint,
    this.controller,
    this.multiline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.headerSmall),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: multiline ? 3 : 1,
          decoration: AppStyles.inputDecoration.copyWith(hintText: hint),
        ),
      ],
    );
  }
}