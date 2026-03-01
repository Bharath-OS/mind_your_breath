import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/constants.dart';
import '../../core/styles.dart';
import '../home/home.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  final Map<String, List<String>> onBoardingTexts = <String, List<String>>{
    'boarding1': [
      "We Won't Hold Your\nHands Forever",
      "We teach you the skill of breath, so \nyou can find calm anywhere, with or \nwithout the phone.",
      'assets/images/abstract_orb_visual.png',
    ],
    'boarding2': [
      "Breathe.\nJust Breathe.",
      "No streaks. No scores. No pressure. \nSimply exist in the moment.",
      'assets/images/Aura_Orb_margin.png',
    ],
    'boarding3': [
      "Sound That\nMoves You",
      "Choose a soundscape. Watch the colors\n shift to match the mood",
      'assets/images/Central Visualization.png',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.all(16),
        decoration: BoxDecoration(gradient: AppColors.backgroundColor),
        child: IntroductionScreen(
          key: _introKey,
          showDoneButton: false,
          showBackButton: false,
          showNextButton: false,
          globalBackgroundColor: Colors.transparent,
          dotsDecorator: .new(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Color(0xff4211D4),
            color: Color(0xff475569),
            spacing: const EdgeInsets.symmetric(horizontal: 2.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          rawPages: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(gradient: AppColors.backgroundColor),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(onBoardingTexts['boarding1']![2]),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 16,
                      children: [
                        Text(
                          onBoardingTexts['boarding1']![0],
                          style: AppStyles.onBoardingTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          onBoardingTexts['boarding1']![1],
                          style: AppStyles.onBoardingSubTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () => _introKey.currentState?.next(),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Color(0xff4211D4),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(gradient: AppColors.backgroundColor),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(onBoardingTexts['boarding2']![2]),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 16,
                      children: [
                        Text(
                          onBoardingTexts['boarding2']![0],
                          style: AppStyles.onBoardingTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          onBoardingTexts['boarding2']![1],
                          style: AppStyles.onBoardingSubTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () => _introKey.currentState?.next(),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20),
                          ),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Color(0xff4211D4),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(gradient: AppColors.backgroundColor2),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(onBoardingTexts['boarding3']![2]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        bottom: 48,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 16,
                        children: [
                          Text(
                            onBoardingTexts['boarding3']![0],
                            style: AppStyles.onBoardingTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            onBoardingTexts['boarding3']![1],
                            style: AppStyles.onBoardingSubTitleStyle,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20,
                            children: [
                              FilterChip(
                                selected: true,
                                selectedColor: AppColors.background,
                                label: Text('Rain'),
                                avatar: Icon(Icons.water_drop_outlined,color: Color(0xffA7F3D0),),
                                onSelected: null,
                                labelStyle: TextStyle(color: Color(0xffA7F3D0),),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color(0xffA7F3D0).withAlpha(50),
                                  ),
                                ),
                              ),
                              FilterChip(
                                padding: EdgeInsets.all(10),
                                avatar: Icon(
                                  Icons.forest_outlined,
                                  color: Color(0xffA7F3D0),
                                ),
                                selected: true,
                                selectedColor: AppColors.background,
                                label: Text('Forest'),
                                onSelected: null,
                                labelStyle: TextStyle(color: Color(0xffA7F3D0)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color(0xffA7F3D0).withAlpha(50),
                                  ),
                                ),
                              ),
                              FilterChip(
                                selected: true,
                                selectedColor: AppColors.background,
                                label: Text('River'),
                                avatar: Icon(
                                  Icons.waves_outlined,
                                  color: Color(0xffA7F3D0),
                                ),
                                onSelected: null,
                                labelStyle: TextStyle(color: Color(0xffA7F3D0)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Color(0xffA7F3D0).withAlpha(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MainPage())),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 20),
                            ),
                            child: Text(
                              'Enter the Sanctuary',
                              style: TextStyle(
                                color: Color(0xff4211D4),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
}
