import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomNavBar extends StatelessWidget {
  final Function(int) onTabSelected;
  final int currentIndex;

  const CustomNavBar({
    super.key,
    required this.onTabSelected,
    required this.currentIndex,
  });

  final List<String> tabs = const ["Home", "About", "Projects", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // Ensures the column takes up minimal space
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          color: myColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(tabs.length, (index) {
              final bool isSelected = index == currentIndex;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue : myColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () => onTabSelected(index),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        fontFamily: 'SpaceGrotesk',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const Divider(
          color: Colors.white, // Sets the color of the divider
          thickness: 1, // Sets the thickness of the divider
        ),
      ],
    );
  }
}
