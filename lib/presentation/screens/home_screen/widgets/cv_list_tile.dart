import 'package:flutter/material.dart';
import '../../../../utils/constants/app_styles.dart';
import '../../../widgets/global/custom_card.dart';
import 'cv_profile_image.dart';

class CVListTile extends StatelessWidget {
  final Map<String, String> profile;
  final VoidCallback onTap;

  const CVListTile({
    super.key,
    required this.profile,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: onTap,
      child: Row(
        children: [
          CVProfileImage(
            cvImageUrl: profile['cvImage']!,
            personImageUrl: profile['personImage']!,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(profile['name']!, style: AppStyles.headerSmall),
                Text(profile['position']!, style: AppStyles.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
