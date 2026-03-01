import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/constants.dart';
import '../../core/styles.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.transparent,
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Color(0xff4211D4),
            color: Color(0xff475569),
            spacing: const EdgeInsets.symmetric(horizontal: 2.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          showNextButton: true,
          next: const Text('Next', style: AppStyles.onBoardingButtonStyle),
          showSkipButton: true,
          skip: Text('Skipppp', style: AppStyles.onBoardingButtonStyle),
          showBackButton: true,
          back: const Text('back', style: AppStyles.onBoardingButtonStyle),
          showDoneButton: true,
          done: const Text('Done', style: AppStyles.onBoardingButtonStyle),
          onDone: () => print('Go to the app.'),
          pages: [
            PageViewModel(
              titleWidget: const Text(
                "We Won't Hold Your\nHands Forever",
                style: AppStyles.onBoardingTitleStyle,
                textAlign: TextAlign.center,
              ),
              bodyWidget: const Text(
                "We teach you the skill of breath, so \nyou can find calm anywhere, with or \nwithout the phone.",
                style: AppStyles.onBoardingSubTitleStyle,
                textAlign: TextAlign.center,
              ),
              image: Image.asset('assets/images/abstract_orb_visual.png'),
            ),
            PageViewModel(
              titleWidget: const Text(
                "Breathe.\nJust Breathe.",
                style: AppStyles.onBoardingTitleStyle,
                textAlign: TextAlign.center,
              ),
              body:
                  "No streaks. No scores. No pressure. \nSimply exist in the moment.",
              image: Image.asset('assets/images/Aura_Orb_margin.png'),
            ),
            PageViewModel(
              titleWidget: RichText(
                text: TextSpan(
                  text: "Sound That\n",
                  children: [
                    TextSpan(
                      text: "Moves You.",
                      style: AppStyles.onBoardingTitleStyle.copyWith(
                        foreground: Paint()
                          ..shader = AppColors.textGradient.createShader(
                            Rect.fromLTWH(100, 0, 100, 0),
                          ),
                      ),
                    ),
                  ],
                  style: AppStyles.onBoardingTitleStyle,
                ),
                textAlign: TextAlign.center,
              ),
              body:
                  "No streaks. No scores. No pressure. \nSimply exist in the moment.",
              image: Image.asset('assets/images/Central Visualization.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Image.asset('assets/images/abstract_orb_visual.png'),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'We won\'t hold your hands forever',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
