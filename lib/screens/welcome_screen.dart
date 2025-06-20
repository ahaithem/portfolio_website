import 'package:flutter/material.dart';
import '../constants/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/images/photo_profile.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              "Hi, I'm Haithem",
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            //SizedBox(height: 5),
            Text(
              "Flutter Developer & AI-DS Student",
              style: TextStyle(
                fontFamily: 'SpaceGrotesk',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: myColor1,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add download logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: myColor2,
                fixedSize: const Size(480, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
              ),
              child: Text(
                "Download Resume",
                style: const TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontSize: 14,
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
