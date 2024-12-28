import 'package:flutter/material.dart';
import '../../../utils/constants/app_data.dart';
import '../../../utils/constants/app_styles.dart';
import '../../../utils/helpers/go.dart';
import '../home_screen/widgets/cv_list_tile.dart';
import '../product_details/product_details.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Favorites',
            style: AppStyles.headerLarge,
          ),
        ),
        Expanded(
          child: CVData.favoritedProfiles.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 64,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Favorites is empty',
                        style: AppStyles.headerMedium,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Add CVs to favorites from details page',
                        style: AppStyles.bodyMedium.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: CVData.favoritedProfiles.length,
                  itemBuilder: (context, index) {
                    final profile = CVData.favoritedProfiles[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: CVListTile(
                        profile: profile,
                        onTap: () => Go.to(
                          context,
                          ProductDetails(profile: profile),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}