import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _State();
}

class _State extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Center(
        child: Column(
          children: [
            Text(
              'Projects',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Explore a selection of my projects, showcasing my skills and experience in web development. Each project includes a brief description, technologies used, and links to the live site and GitHub repository.',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: myColor1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
