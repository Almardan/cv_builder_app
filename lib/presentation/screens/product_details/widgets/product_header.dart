// lib/presentation/screens/product_details/widgets/product_header.dart
import 'package:flutter/material.dart';
import '../../../../utils/constants/app_styles.dart';

class ProductHeader extends StatelessWidget {
  final String title;
  final String name;
  final String personImageUrl;

  const ProductHeader({
    super.key,
    required this.title,
    required this.name,
    required this.personImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(personImageUrl),
          ),
          const SizedBox(height: 16.0),
          Text(name, style: AppStyles.headerLarge),
          Text(title, style: AppStyles.bodyMedium),
        ],
      ),
    );
  }
}