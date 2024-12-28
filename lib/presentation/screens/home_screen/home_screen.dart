import 'package:flutter/material.dart';
import '../../../utils/constants/app_data.dart';
import '../../../utils/constants/app_styles.dart';
import 'widgets/cv_list_tile.dart';
import 'widgets/home_bottom_nav.dart';
import '../favorite_screen/favorite_screen.dart';
import '../product_details/product_details.dart';

class HomeScreen extends StatefulWidget {
  final int initialIndex;

  const HomeScreen({
    super.key,
    this.initialIndex = 0,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  Widget _getScreen() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return const FavoriteScreen();
      case 2:
        return const ProductDetails();
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Homepage',
            style: AppStyles.headerLarge,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: CVData.profiles.length,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemBuilder: (context, index) {
              final profile = CVData.profiles[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: CVListTile(
                  profile: profile,
                  onTap: () {
                    setState(() => _selectedIndex = 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(profile: profile),
                      ),
                    ).then((_) => setState(() => _selectedIndex = 0));
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (_selectedIndex != 0) {
          setState(() {
            _selectedIndex = 0;
          });
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: _getScreen()),
              HomeBottomNav(
                selectedIndex: _selectedIndex,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}