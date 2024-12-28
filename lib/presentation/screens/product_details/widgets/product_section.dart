import 'package:flutter/material.dart';
import '../../../../utils/constants/app_styles.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final String content;

  const ProductSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.headerMedium,
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: AppStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}