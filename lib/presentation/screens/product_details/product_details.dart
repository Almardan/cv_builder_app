import 'package:flutter/material.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_data.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../utils/constants/app_styles.dart';
import '../home_screen/home_screen.dart';
import 'widgets/product_header.dart';
import 'widgets/product_section.dart';

class ProductDetails extends StatefulWidget {
  final Map<String, String>? profile;

  const ProductDetails({
    super.key,
    this.profile,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool get isFavorited => 
    widget.profile != null && CVData.favoritedProfiles.contains(widget.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: widget.profile != null
            ? [
                IconButton(
                  icon: Icon(
                    isFavorited ? Icons.favorite : Icons.favorite_border,
                    color: isFavorited ? AppColors.error : null,
                  ),
                  onPressed: () {
                    setState(() {
                      CVData.toggleFavorite(widget.profile!);
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ]
            : null,
      ),
      body: widget.profile == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Select CV to view here',
                    style: AppStyles.headerMedium,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child: const Text('Go to Homepage'),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ProductHeader(
                          title: widget.profile!['position']!,
                          name: widget.profile!['name']!,
                          personImageUrl: widget.profile!['personImage']!,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.primary,
                                side: const BorderSide(color: AppColors.primary),
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                              ),
                              child: const Text('Save as PDF'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (!isFavorited) {
                                    CVData.toggleFavorite(widget.profile!);
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 32),
                              ),
                              child: Text(isFavorited ? 'Added' : 'Add'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        ProductSection(
                          title: AppStrings.summary,
                          content: widget.profile!['summary']!,
                        ),
                        ProductSection(
                          title: AppStrings.experience,
                          content: widget.profile!['experience']!,
                        ),
                        ProductSection(
                          title: AppStrings.education,
                          content: widget.profile!['education']!,
                        ),
                        ProductSection(
                          title: AppStrings.skills,
                          content: widget.profile!['skills']!,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}