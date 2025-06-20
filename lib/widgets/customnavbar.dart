import 'package:flutter/material.dart';
import '../constants/colors.dart';

// A custom navigation bar widget that displays tabs and allows switching between them.
class CustomNavBar extends StatelessWidget {
  // Callback function to handle tab selection.
  final Function(int) onTabSelected;

  // Index of the currently selected tab.
  final int currentIndex;

  // Constructor to initialize the navigation bar with required parameters.
  const CustomNavBar({
    super.key,
    required this.onTabSelected,
    required this.currentIndex,
  });

  // List of tab names to be displayed in the navigation bar.
  final List<String> tabs = const ["Home", "Projects", "Contact"];

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adds padding around the navigation bar for spacing.
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
      // Sets the background color of the navigation bar.
      color: myColor,
      child: Row(
        // Aligns the tabs to the end of the row.
        mainAxisAlignment: MainAxisAlignment.end,
        // Generates a list of tab buttons dynamically based on the `tabs` list.
        children: List.generate(tabs.length, (index) {
          // Checks if the current tab is selected.
          final isSelected = index == currentIndex;
          return Padding(
            // Adds horizontal spacing between the tab buttons.
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextButton(
              // Calls the `onTabSelected` callback with the index of the selected tab.
              onPressed: () => onTabSelected(index),
              // Customizes the appearance of the button based on whether it is selected.
              style: TextButton.styleFrom(
                // Sets the text color to white if selected, otherwise grey.
                foregroundColor: isSelected ? Colors.white : Colors.grey,
                // Sets the font style, size, and weight based on the selection state.
                textStyle: TextStyle(
                  fontFamily: 'SpaceGrotesk', // Custom font family.
                  fontSize: 16, // Font size for the tab text.
                  fontWeight: isSelected
                      ? FontWeight.bold
                      : FontWeight.normal, // Bold if selected.
                ),
              ),
              // Displays the tab name as the button text.
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
          );
        }),
      ),
    );
  }
}
