import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../start_screen/presentation/start_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const StartScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth  = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildPage(
                    "Instant Booking",
                    "You can easily book any field, anytime, anywhere for free!",
                    "assets/images/Gemini_Generated_Image1.png",
                    screenHeight,
                    screenWidth,
                    isTablet,
                  ),
                  _buildPage(
                    "Manage Your Fields",
                    "Easily track bookings, control schedules, and manage all your fields in one place!",
                    "assets/images/Gemini_Generated_Image2.png",
                    screenHeight,
                    screenWidth,
                    isTablet,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.015),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(2, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                    width: isTablet ? screenWidth * 0.03 : screenWidth * 0.02,
                    height: isTablet ? screenWidth * 0.03 : screenWidth * 0.02,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index ? Colors.black : Colors.grey,
                    ),
                  );
                }),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.08,
                vertical: screenHeight * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentPage == 0)

                    SizedBox(width: screenWidth * 0.2)
                  else
                    SizedBox(
                      width: screenWidth * 0.3,
                      height: screenHeight * 0.06,
                      child: ElevatedButton(
                        onPressed: () {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Text("BACK"),
                      ),
                    ),

                  SizedBox(
                    width: screenWidth * 0.34,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: _currentPage == 1
                          ? _completeOnboarding
                          : () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        _currentPage == 1 ? "GET STARTED" : "NEXT",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(
      String title,
      String description,
      String imagePath,
      double screenHeight,
      double screenWidth,
      bool isTablet,
      ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.05),

          Image.asset(
            imagePath,
            height: isTablet ? screenHeight * 0.45 : screenHeight * 0.35,
            width: screenWidth * 0.8,
            fit: BoxFit.contain,
          ),

          SizedBox(height: screenHeight * 0.08),

          Text(
            title,
            style: TextStyle(
              fontSize: isTablet ? screenWidth * 0.05 : screenWidth * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: screenHeight * 0.015),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isTablet ? screenWidth * 0.04 : screenWidth * 0.045,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
