import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const HomeBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: selectedIndex == 0 ? Colors.blue : Colors.grey,
              onPressed: () => onTap(0),
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              color: selectedIndex == 1 ? Colors.blue : Colors.grey,
              onPressed: () => onTap(1),
            ),
            IconButton(
              icon: const Icon(Icons.description),
              color: selectedIndex == 2 ? Colors.blue : Colors.grey,
              onPressed: () => onTap(2),
            ),
          ],
        ),
      ),
    );
  }
}
