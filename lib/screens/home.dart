import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'projects_screen.dart';
import 'contact_screen.dart';
import 'about_screen.dart';
import '../widgets/customnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    WelcomeScreen(),
    ProjectsScreen(),
    ContactScreen(),
    AboutScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E10), // Optional: match your design
      body: Column(
        children: [
          CustomNavBar(
            currentIndex: _currentIndex,
            onTabSelected: _onTabSelected,
          ),
          Expanded(child: _pages[_currentIndex]),
        ],
      ),
    );
  }
}
