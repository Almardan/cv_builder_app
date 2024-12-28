import 'package:flutter/material.dart';
import '../../../../utils/constants/app_styles.dart';
import '../../../widgets/global/custom_card.dart';

class FavoriteCard extends StatelessWidget {
  final String title;
  final String company;
  final VoidCallback onTap;

  const FavoriteCard({
    super.key,
    required this.title,
    required this.company,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              color: Colors.grey[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title @ $company',
                  style: AppStyles.headerSmall,
                ),
                const SizedBox(height: 4),
                const Text(
                  '2 Pages • Favourite',
                  style: AppStyles.caption,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
