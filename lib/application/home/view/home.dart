import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/NavButton.dart';
import '../widget/SocialIcon.dart';
import '../widget/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Uri githubUrl = Uri.parse("https://github.com/devsr143");
  final Uri linkedinUrl = Uri.parse("https://www.linkedin.com/in/devachandsr143/");
  final Uri emailUrl = Uri.parse("devachand@email.com");

  Future<void> _openUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/portnew.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(iconPath: "assets/icon/github.png", onTap: () => _openUrl(githubUrl)),
                const SizedBox(width: 40),
                SocialIcon(iconPath: "assets/icon/linkedin.png", onTap: () => _openUrl(linkedinUrl)),
                // const SizedBox(width: 40),
                // SocialIcon(iconPath: "assets/icon/email.png", onTap: () => _openUrl(emailUrl)),
              ],
            ),
          ),
          Positioned(
            right: 30,
            top: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(20),
                border: Border.all(
                    color: Colors.white10
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavButton(
                    title: "OBJECTIVE",
                    onPressed: () => showDetailCard(
                      context,
                      "OBJECTIVE",
                      '''
I am a Flutter Developer with practical experience in mobile application development. 
Proficient in API integration, Firebase, and state management techniques, with a strong 
focus on creating scalable, high-performance apps. Seeking an opportunity to contribute 
to forward-thinking projects, collaborate with innovative teams, and continue growing as 
a developer while delivering impactful mobile solutions.
    ''',
                    ),
                  ),
                  NavButton(
                    title: "PROJECT",
                    onPressed: () => showDetailCard(
                      context,
                      "PROJECT",
                      '''
Eazy Buy Shopping App | Developed using Flutter and Firebase
• Implemented REST APIs to facilitate product listings and cart functionalities.
• Integrated Firebase Authentication (Email/Password) to ensure secure user access.
• Designed a responsive user interface to promote seamless navigation.
• State Management: Provider
• Local Storage: Shared Preferences, Hive

Weather App | Flutter, Hive, REST API
• Developed a weather forecasting application by integrating the Open Weather API.
• Utilized Hive database for local storage and offline access.
• Optimized API calls, resulting in a 20% reduction in response time.

Blogfy App | Flutter, Firebase
• Developed a blog application where users can read, create, and manage blog posts with a clean and responsive UI.
• Utilized Firebase for storage.
• Used ImagePicker to select images for blogs.

Justice Connect (Group Project) | Flutter, Python, SQLyog
• Worked in a group project to create an app and website.
• Justice Connect connects clients to advocates through the app.
• Mobile app built with Flutter, website developed in Python using PyCharm.
• Successfully completed in February 2025 as a college project.
    ''',
                    ),
                  ),
                  NavButton(
                    title: "SKILLS",
                    onPressed: () => showDetailCard(
                      context,
                      "SKILLS",
                      '''
•  Flutter & Dart
•  State Management
•  API Integration
•  MVVM Architecture
•  Firebase
•  Android Studio, VS Code
    ''',
                    ),
                  ),
                  NavButton(
                    title: "SOFT SKILLS",
                    onPressed: () => showDetailCard(
                      context,
                      "SOFT SKILLS",
                      '''
• Communication Skills
• Problem-Solving
• Team Collaboration
• Time Management
    ''',
                    ),
                  ),
                  NavButton(
                    title: "EDUCATION",
                    onPressed: () => showDetailCard(
                      context,
                      "EDUCATION",
                      '''
• Bachelor of Computer Applications  
  Calicut University (2022 - 2025)

• Higher Secondary Education  
  Memunda HSS, Kerala
    ''',
                    ),
                  ),
                  NavButton(
                      title: "CONTACT ME",
                      onPressed: () => showDetailCard(
                          context, "CONTACT ME",
                          '''
 • Phone - 8590806818 
 • Email - devachandsr143@email.com
                          ''')),
                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}